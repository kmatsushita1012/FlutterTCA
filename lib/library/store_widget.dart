//Widget
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tca/library/reducer.dart';

abstract class StoreWidget<N extends TCANotifier<S, A>, S, A extends TCAAction>
    extends StoreStatefulWidget<N, S, A> {
  const StoreWidget({super.key, required N Function(Ref) notifierBuilder})
    : _notifierBuilder = notifierBuilder;

  final N Function(Ref) _notifierBuilder;

  Widget build(BuildContext context, LocalWidgetStore<N, S, A> store);

  @override
  // ignore: library_private_types_in_public_api
  _StoreState<N, S, A> createState() =>
      _StoreState(notifierBuilder: _notifierBuilder);
}

class _StoreState<N extends TCANotifier<S, A>, S, A extends TCAAction>
    extends StoreState<StoreWidget<N, S, A>, N, S, A> {
  _StoreState({required super.notifierBuilder});

  @override
  Widget build(BuildContext context) {
    final store = _store;
    if (store != null) {
      return widget.build(context, store);
    } else {
      return Container();
    }
  }
}

abstract class StoreStatefulWidget<
  N extends TCANotifier<S, A>,
  S,
  A extends TCAAction
>
    extends ConsumerStatefulWidget {
  const StoreStatefulWidget({super.key});

  @override
  // ignore: no_logic_in_create_state
  StoreState<StoreStatefulWidget<N, S, A>, N, S, A> createState();

  @override
  StoreStatefulElement createElement() {
    return StoreStatefulElement(this);
  }
}

abstract class StoreState<
  T extends StoreStatefulWidget<N, S, A>,
  N extends TCANotifier<S, A>,
  S,
  A extends TCAAction
>
    extends ConsumerState<T> {
  StoreState({required N Function(Ref) notifierBuilder}) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // ここでstateを更新

      setState(() {
        this._store = LocalWidgetStore<N, S, A>(
          ref: ref,
          notifierBuilder: notifierBuilder,
        );
      });
    });
  }
  LocalWidgetStore<N, S, A>? _store;
  LocalWidgetStore<N, S, A> get store {
    final store = _store;
    if (store != null) {
      return store;
    } else {
      throw StateError('Store has not been initialized');
    }
  }
}

class StoreStatefulElement extends ConsumerStatefulElement {
  StoreStatefulElement(super.widget);
}

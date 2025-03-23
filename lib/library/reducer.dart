import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class TCAAction {}

abstract class TCANotifier<S, A extends TCAAction> extends StateNotifier<S> {
  TCANotifier(super.state, Ref ref) {
    this.store = GlobalStore(ref: ref);
  }
  late GlobalStore store;

  A get action;
}

abstract class ILocalStore<
  N extends TCANotifier<S, A>,
  S,
  A extends TCAAction
> {
  late final StateNotifierProvider<N, S> provider;

  ILocalStore({required N Function(Ref) notifierBuilder}) {
    provider = StateNotifierProvider<N, S>((ref) {
      return notifierBuilder(ref);
    });
  }
  S get state;
  A get action;

  void listen(void Function(S? previous, S next) listener);
}

class LocalWidgetStore<N extends TCANotifier<S, A>, S, A extends TCAAction>
    extends ILocalStore<N, S, A> {
  late final WidgetRef _ref;

  LocalWidgetStore({required WidgetRef ref, required super.notifierBuilder}) {
    _ref = ref;
  }

  @override
  S get state {
    return _ref.watch(provider);
  }

  @override
  A get action {
    return _ref.read(provider.notifier).action;
  }

  @override
  void listen(void Function(S? previous, S next) listener) {
    _ref.listen(provider, listener);
  }
}

class LocalStore<N extends TCANotifier<S, A>, S, A extends TCAAction>
    extends ILocalStore<N, S, A> {
  late final Ref _ref;

  LocalStore({required Ref ref, required super.notifierBuilder}) {
    _ref = ref;
  }

  @override
  S get state {
    return _ref.watch(provider);
  }

  @override
  A get action {
    return _ref.read(provider.notifier).action;
  }

  @override
  void listen(void Function(S? previous, S next) listener) {
    _ref.listen(provider, listener);
  }
}

abstract class IGlobalStore {
  S stateOf<N extends TCANotifier<S, A>, S, A extends TCAAction>(
    StateNotifierProvider<N, S> provider,
  );
  A actionOf<N extends TCANotifier<S, A>, S, A extends TCAAction>(
    StateNotifierProvider<N, S> provider,
  );
  void listen<N extends TCANotifier<S, A>, S, A extends TCAAction>(
    StateNotifierProvider<N, S> provider,
    void Function(S? previous, S next) listener,
  );
}

class GlobalWidgetStore extends IGlobalStore {
  final WidgetRef _ref;

  GlobalWidgetStore({required WidgetRef ref}) : _ref = ref;

  @override
  S stateOf<N extends TCANotifier<S, A>, S, A extends TCAAction>(
    StateNotifierProvider<N, S> provider,
  ) {
    return _ref.watch(provider);
  }

  @override
  A actionOf<N extends TCANotifier<S, A>, S, A extends TCAAction>(
    StateNotifierProvider<N, S> provider,
  ) {
    return _ref.read(provider.notifier).action;
  }

  @override
  void listen<N extends TCANotifier<S, A>, S, A extends TCAAction>(
    StateNotifierProvider<N, S> provider,
    void Function(S? previous, S next) listener,
  ) {
    return _ref.listen(provider, listener);
  }
}

class GlobalStore extends IGlobalStore {
  final Ref _ref;

  GlobalStore({required Ref ref}) : _ref = ref;

  @override
  S stateOf<N extends TCANotifier<S, A>, S, A extends TCAAction>(
    StateNotifierProvider<N, S> provider,
  ) {
    return _ref.watch(provider);
  }

  @override
  A actionOf<N extends TCANotifier<S, A>, S, A extends TCAAction>(
    StateNotifierProvider<N, S> provider,
  ) {
    return _ref.read(provider.notifier).action;
  }

  @override
  void listen<N extends TCANotifier<S, A>, S, A extends TCAAction>(
    StateNotifierProvider<N, S> provider,
    void Function(S? previous, S next) listener,
  ) {
    _ref.listen(provider, listener);
  }
}

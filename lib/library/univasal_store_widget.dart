//Widget
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tca/library/reducer.dart';

abstract class UniversalStoreWidget extends UniversalStoreStatefulWidget {
  const UniversalStoreWidget({super.key});
  Widget build(BuildContext context, GlobalWidgetStore store);

  @override
  // ignore: library_private_types_in_public_api
  _UniversalStoreState createState() => _UniversalStoreState();
}

class _UniversalStoreState extends UniversalStoreState<UniversalStoreWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.build(context, store);
  }
}

abstract class UniversalStoreStatefulWidget extends ConsumerStatefulWidget {
  const UniversalStoreStatefulWidget({super.key});

  @override
  // ignore: no_logic_in_create_state
  UniversalStoreState createState();

  @override
  UniversalStoreStatefulElement createElement() {
    return UniversalStoreStatefulElement(this);
  }
}

abstract class UniversalStoreState<T extends UniversalStoreStatefulWidget>
    extends ConsumerState<T> {
  /// An object that allows widgets to interact with providers.
  late final GlobalWidgetStore store = GlobalWidgetStore(ref: ref);
}

class UniversalStoreStatefulElement extends ConsumerStatefulElement {
  UniversalStoreStatefulElement(super.widget);
}

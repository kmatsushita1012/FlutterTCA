// 実装1
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_tca/library/navigation.dart';
import 'package:flutter_tca/library/reducer.dart';
import 'package:flutter_tca/library/univasal_store_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

part 'counter_reducer.freezed.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState({required int value}) = _CounterState;
}

// 実装2
abstract class CounterAction extends TCAAction {
  void incrementButtonTapped();
  void decrementButtonTapped();
}

// 実装3
class CountReducerNotifier extends TCANotifier<CounterState, CounterAction>
    implements CounterAction {
  CountReducerNotifier(super.state, super.ref);

  @override
  CounterAction get action => this;

  @override
  void incrementButtonTapped() {
    state = state.copyWith(value: state.value + 1);
  }

  @override
  void decrementButtonTapped() {
    state = state.copyWith(value: state.value - 1);
  }
}

// 実装4
final counterProvider =
    StateNotifierProvider<CountReducerNotifier, CounterState>((ref) {
      return CountReducerNotifier(CounterState(value: 0), ref);
    });

class CounterPage extends UniversalStoreWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, GlobalWidgetStore store) {
    final state = store.stateOf(counterProvider);
    final action = store.actionOf(counterProvider);

    return Scaffold(
      appBar: TreeBaseAppBar(title: Text('Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Counter Value:'),
            Text('${state.value}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => action.incrementButtonTapped(),
                ),
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () => action.decrementButtonTapped(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

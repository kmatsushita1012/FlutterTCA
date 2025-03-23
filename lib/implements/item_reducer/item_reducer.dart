// 実装1
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tca/library/navigation.dart';
import 'package:flutter_tca/library/reducer.dart';
import 'package:flutter_tca/library/univasal_store_widget.dart';
import 'package:flutter_tca/library/store_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

part 'item_reducer.freezed.dart';

@freezed
class Item with _$Item {
  const factory Item({required String id, required String description}) =
      _ItemState;
}

@freezed
class ListState with _$ListState {
  const factory ListState({
    required List<Item> items,
    required DetailState? detailPage,
  }) = _ListState;
}

// 実装2
abstract class ListAction extends TCAAction {
  void itemTapped(Item item);
  void itemDetailDismissed();
}

// 実装3
class ListReducerNotifier extends TCANotifier<ListState, ListAction>
    implements ListAction {
  ListReducerNotifier(super.state, super.ref);

  @override
  ListAction get action => this;

  @override
  void itemTapped(Item item) {
    state = state.copyWith(
      detailPage: DetailState(item: item, dismiss: () => itemDetailDismissed()),
    );
  }

  @override
  void itemDetailDismissed() {
    state = state.copyWith(detailPage: null);
  }
}

// 実装4
final listProvider = StateNotifierProvider<ListReducerNotifier, ListState>((
  ref,
) {
  return ListReducerNotifier(
    ListState(
      items: [
        Item(id: "A", description: "This is A"),
        Item(id: "B", description: "This is B"),
      ],
      detailPage: null,
    ),
    ref,
  );
});

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    required Item item,
    required void Function() dismiss,
  }) = _DetailState;
}

// 実装2
abstract class DetailAction extends TCAAction {
  void dismissButtanTapped();
}

// 実装3
class DetailReducerNotifier extends TCANotifier<DetailState, DetailAction>
    implements DetailAction {
  DetailReducerNotifier(super.state, super.ref);

  @override
  DetailAction get action => this;

  @override
  void dismissButtanTapped() {
    state.dismiss();
  }
}

// ListPage
class ListPage extends UniversalStoreWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context, GlobalWidgetStore store) {
    final state = store.stateOf(listProvider);
    final action = store.actionOf(listProvider);
    final items = state.items;
    store.listen(listProvider, (previous, next) {
      handleNavigation(
        context,
        previous,
        next,
        (state) => state.detailPage,
        (detailState) => DetailPage(
          notifierBuilder: (ref) => DetailReducerNotifier(detailState, ref),
        ),
      );
    });
    return Scaffold(
      appBar: TreeBaseAppBar(title: Text('List Page')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final id = items[index].id;
          return ListTile(
            title: Text('Item $id'),
            onTap: () => action.itemTapped(items[index]),
          );
        },
      ),
    );
  }
}

// DetailPage
class DetailPage
    extends StoreWidget<DetailReducerNotifier, DetailState, DetailAction> {
  const DetailPage({super.key, required super.notifierBuilder});

  @override
  Widget build(
    BuildContext context,
    LocalWidgetStore<DetailReducerNotifier, DetailState, DetailAction> store,
  ) {
    final state = store.state;
    final action = store.action;
    final item = state.item;

    return Scaffold(
      appBar: TreeBaseAppBar(
        title: Text('Detail Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // 戻るアイコン
          onPressed: action.dismissButtanTapped,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${item.id}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 8),
            Text(
              'Description: ${item.description}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: action.dismissButtanTapped,
              child: Text('Dismiss'),
            ),
          ],
        ),
      ),
    );
  }
}

class EditPage
    extends
        StoreStatefulWidget<DetailReducerNotifier, DetailState, DetailAction> {
  final dynamic notifierBuilder;

  const EditPage({super.key, required this.notifierBuilder});

  @override
  StoreState<
    StoreStatefulWidget<DetailReducerNotifier, DetailState, DetailAction>,
    DetailReducerNotifier,
    DetailState,
    DetailAction
  >
  // ignore: no_logic_in_create_state
  createState() => _EditPageState(notifierBuilder: notifierBuilder);
}

class _EditPageState
    extends
        StoreState<EditPage, DetailReducerNotifier, DetailState, DetailAction> {
  _EditPageState({required super.notifierBuilder});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    throw UnimplementedError();
  }
}

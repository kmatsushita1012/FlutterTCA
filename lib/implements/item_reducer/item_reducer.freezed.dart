// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_reducer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Item {
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call({String id, String description});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? description = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ItemStateImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemStateImplCopyWith(
    _$ItemStateImpl value,
    $Res Function(_$ItemStateImpl) then,
  ) = __$$ItemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String description});
}

/// @nodoc
class __$$ItemStateImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemStateImpl>
    implements _$$ItemStateImplCopyWith<$Res> {
  __$$ItemStateImplCopyWithImpl(
    _$ItemStateImpl _value,
    $Res Function(_$ItemStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? description = null}) {
    return _then(
      _$ItemStateImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$ItemStateImpl implements _ItemState {
  const _$ItemStateImpl({required this.id, required this.description});

  @override
  final String id;
  @override
  final String description;

  @override
  String toString() {
    return 'Item(id: $id, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, description);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemStateImplCopyWith<_$ItemStateImpl> get copyWith =>
      __$$ItemStateImplCopyWithImpl<_$ItemStateImpl>(this, _$identity);
}

abstract class _ItemState implements Item {
  const factory _ItemState({
    required final String id,
    required final String description,
  }) = _$ItemStateImpl;

  @override
  String get id;
  @override
  String get description;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemStateImplCopyWith<_$ItemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListState {
  List<Item> get items => throw _privateConstructorUsedError;
  DetailState? get detailPage => throw _privateConstructorUsedError;

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListStateCopyWith<ListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res, ListState>;
  @useResult
  $Res call({List<Item> items, DetailState? detailPage});

  $DetailStateCopyWith<$Res>? get detailPage;
}

/// @nodoc
class _$ListStateCopyWithImpl<$Res, $Val extends ListState>
    implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? detailPage = freezed}) {
    return _then(
      _value.copyWith(
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<Item>,
            detailPage:
                freezed == detailPage
                    ? _value.detailPage
                    : detailPage // ignore: cast_nullable_to_non_nullable
                        as DetailState?,
          )
          as $Val,
    );
  }

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailStateCopyWith<$Res>? get detailPage {
    if (_value.detailPage == null) {
      return null;
    }

    return $DetailStateCopyWith<$Res>(_value.detailPage!, (value) {
      return _then(_value.copyWith(detailPage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListStateImplCopyWith<$Res>
    implements $ListStateCopyWith<$Res> {
  factory _$$ListStateImplCopyWith(
    _$ListStateImpl value,
    $Res Function(_$ListStateImpl) then,
  ) = __$$ListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Item> items, DetailState? detailPage});

  @override
  $DetailStateCopyWith<$Res>? get detailPage;
}

/// @nodoc
class __$$ListStateImplCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res, _$ListStateImpl>
    implements _$$ListStateImplCopyWith<$Res> {
  __$$ListStateImplCopyWithImpl(
    _$ListStateImpl _value,
    $Res Function(_$ListStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? detailPage = freezed}) {
    return _then(
      _$ListStateImpl(
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<Item>,
        detailPage:
            freezed == detailPage
                ? _value.detailPage
                : detailPage // ignore: cast_nullable_to_non_nullable
                    as DetailState?,
      ),
    );
  }
}

/// @nodoc

class _$ListStateImpl implements _ListState {
  const _$ListStateImpl({
    required final List<Item> items,
    required this.detailPage,
  }) : _items = items;

  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final DetailState? detailPage;

  @override
  String toString() {
    return 'ListState(items: $items, detailPage: $detailPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.detailPage, detailPage) ||
                other.detailPage == detailPage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    detailPage,
  );

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListStateImplCopyWith<_$ListStateImpl> get copyWith =>
      __$$ListStateImplCopyWithImpl<_$ListStateImpl>(this, _$identity);
}

abstract class _ListState implements ListState {
  const factory _ListState({
    required final List<Item> items,
    required final DetailState? detailPage,
  }) = _$ListStateImpl;

  @override
  List<Item> get items;
  @override
  DetailState? get detailPage;

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListStateImplCopyWith<_$ListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailState {
  Item get item => throw _privateConstructorUsedError;
  void Function() get dismiss => throw _privateConstructorUsedError;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
    DetailState value,
    $Res Function(DetailState) then,
  ) = _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call({Item item, void Function() dismiss});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? item = null, Object? dismiss = null}) {
    return _then(
      _value.copyWith(
            item:
                null == item
                    ? _value.item
                    : item // ignore: cast_nullable_to_non_nullable
                        as Item,
            dismiss:
                null == dismiss
                    ? _value.dismiss
                    : dismiss // ignore: cast_nullable_to_non_nullable
                        as void Function(),
          )
          as $Val,
    );
  }

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailStateImplCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$DetailStateImplCopyWith(
    _$DetailStateImpl value,
    $Res Function(_$DetailStateImpl) then,
  ) = __$$DetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Item item, void Function() dismiss});

  @override
  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$DetailStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailStateImpl>
    implements _$$DetailStateImplCopyWith<$Res> {
  __$$DetailStateImplCopyWithImpl(
    _$DetailStateImpl _value,
    $Res Function(_$DetailStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? item = null, Object? dismiss = null}) {
    return _then(
      _$DetailStateImpl(
        item:
            null == item
                ? _value.item
                : item // ignore: cast_nullable_to_non_nullable
                    as Item,
        dismiss:
            null == dismiss
                ? _value.dismiss
                : dismiss // ignore: cast_nullable_to_non_nullable
                    as void Function(),
      ),
    );
  }
}

/// @nodoc

class _$DetailStateImpl implements _DetailState {
  const _$DetailStateImpl({required this.item, required this.dismiss});

  @override
  final Item item;
  @override
  final void Function() dismiss;

  @override
  String toString() {
    return 'DetailState(item: $item, dismiss: $dismiss)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStateImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.dismiss, dismiss) || other.dismiss == dismiss));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, dismiss);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      __$$DetailStateImplCopyWithImpl<_$DetailStateImpl>(this, _$identity);
}

abstract class _DetailState implements DetailState {
  const factory _DetailState({
    required final Item item,
    required final void Function() dismiss,
  }) = _$DetailStateImpl;

  @override
  Item get item;
  @override
  void Function() get dismiss;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

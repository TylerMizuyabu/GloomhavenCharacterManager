// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ItemEquipSlot get equipSlot => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  ItemUseType get useType => throw _privateConstructorUsedError;
  int get uses => throw _privateConstructorUsedError;
  List<Modifier> get additionalModifiers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {String name,
      int id,
      String description,
      ItemEquipSlot equipSlot,
      int cost,
      ItemUseType useType,
      int uses,
      List<Modifier> additionalModifiers});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? description = null,
    Object? equipSlot = null,
    Object? cost = null,
    Object? useType = null,
    Object? uses = null,
    Object? additionalModifiers = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      equipSlot: null == equipSlot
          ? _value.equipSlot
          : equipSlot // ignore: cast_nullable_to_non_nullable
              as ItemEquipSlot,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      useType: null == useType
          ? _value.useType
          : useType // ignore: cast_nullable_to_non_nullable
              as ItemUseType,
      uses: null == uses
          ? _value.uses
          : uses // ignore: cast_nullable_to_non_nullable
              as int,
      additionalModifiers: null == additionalModifiers
          ? _value.additionalModifiers
          : additionalModifiers // ignore: cast_nullable_to_non_nullable
              as List<Modifier>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int id,
      String description,
      ItemEquipSlot equipSlot,
      int cost,
      ItemUseType useType,
      int uses,
      List<Modifier> additionalModifiers});
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res, _$_Item>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? description = null,
    Object? equipSlot = null,
    Object? cost = null,
    Object? useType = null,
    Object? uses = null,
    Object? additionalModifiers = null,
  }) {
    return _then(_$_Item(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      equipSlot: null == equipSlot
          ? _value.equipSlot
          : equipSlot // ignore: cast_nullable_to_non_nullable
              as ItemEquipSlot,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      useType: null == useType
          ? _value.useType
          : useType // ignore: cast_nullable_to_non_nullable
              as ItemUseType,
      uses: null == uses
          ? _value.uses
          : uses // ignore: cast_nullable_to_non_nullable
              as int,
      additionalModifiers: null == additionalModifiers
          ? _value._additionalModifiers
          : additionalModifiers // ignore: cast_nullable_to_non_nullable
              as List<Modifier>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  _$_Item(
      {required this.name,
      required this.id,
      required this.description,
      required this.equipSlot,
      this.cost = 1,
      this.useType = ItemUseType.infinite,
      this.uses = 1,
      final List<Modifier> additionalModifiers = const []})
      : _additionalModifiers = additionalModifiers;

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final String name;
  @override
  final int id;
  @override
  final String description;
  @override
  final ItemEquipSlot equipSlot;
  @override
  @JsonKey()
  final int cost;
  @override
  @JsonKey()
  final ItemUseType useType;
  @override
  @JsonKey()
  final int uses;
  final List<Modifier> _additionalModifiers;
  @override
  @JsonKey()
  List<Modifier> get additionalModifiers {
    if (_additionalModifiers is EqualUnmodifiableListView)
      return _additionalModifiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_additionalModifiers);
  }

  @override
  String toString() {
    return 'Item(name: $name, id: $id, description: $description, equipSlot: $equipSlot, cost: $cost, useType: $useType, uses: $uses, additionalModifiers: $additionalModifiers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.equipSlot, equipSlot) ||
                other.equipSlot == equipSlot) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.useType, useType) || other.useType == useType) &&
            (identical(other.uses, uses) || other.uses == uses) &&
            const DeepCollectionEquality()
                .equals(other._additionalModifiers, _additionalModifiers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      id,
      description,
      equipSlot,
      cost,
      useType,
      uses,
      const DeepCollectionEquality().hash(_additionalModifiers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  factory _Item(
      {required final String name,
      required final int id,
      required final String description,
      required final ItemEquipSlot equipSlot,
      final int cost,
      final ItemUseType useType,
      final int uses,
      final List<Modifier> additionalModifiers}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  String get description;
  @override
  ItemEquipSlot get equipSlot;
  @override
  int get cost;
  @override
  ItemUseType get useType;
  @override
  int get uses;
  @override
  List<Modifier> get additionalModifiers;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}

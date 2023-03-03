// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return _Character.fromJson(json);
}

/// @nodoc
mixin _$Character {
  String get name => throw _privateConstructorUsedError;
  int get health => throw _privateConstructorUsedError;
  int? get exp => throw _privateConstructorUsedError;
  int? get gold => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;
  List<Perk> get perks => throw _privateConstructorUsedError;
  List<ConditionTypes> get conditions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res, Character>;
  @useResult
  $Res call(
      {String name,
      int health,
      int? exp,
      int? gold,
      List<Item> items,
      List<Perk> perks,
      List<ConditionTypes> conditions});
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res, $Val extends Character>
    implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? health = null,
    Object? exp = freezed,
    Object? gold = freezed,
    Object? items = null,
    Object? perks = null,
    Object? conditions = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      health: null == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as int,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int?,
      gold: freezed == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as int?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      perks: null == perks
          ? _value.perks
          : perks // ignore: cast_nullable_to_non_nullable
              as List<Perk>,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<ConditionTypes>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterCopyWith<$Res> implements $CharacterCopyWith<$Res> {
  factory _$$_CharacterCopyWith(
          _$_Character value, $Res Function(_$_Character) then) =
      __$$_CharacterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int health,
      int? exp,
      int? gold,
      List<Item> items,
      List<Perk> perks,
      List<ConditionTypes> conditions});
}

/// @nodoc
class __$$_CharacterCopyWithImpl<$Res>
    extends _$CharacterCopyWithImpl<$Res, _$_Character>
    implements _$$_CharacterCopyWith<$Res> {
  __$$_CharacterCopyWithImpl(
      _$_Character _value, $Res Function(_$_Character) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? health = null,
    Object? exp = freezed,
    Object? gold = freezed,
    Object? items = null,
    Object? perks = null,
    Object? conditions = null,
  }) {
    return _then(_$_Character(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      health: null == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as int,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int?,
      gold: freezed == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as int?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      perks: null == perks
          ? _value._perks
          : perks // ignore: cast_nullable_to_non_nullable
              as List<Perk>,
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<ConditionTypes>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Character extends _Character {
  _$_Character(
      {required this.name,
      required this.health,
      this.exp = 0,
      this.gold = 0,
      final List<Item> items = const [],
      final List<Perk> perks = const [],
      final List<ConditionTypes> conditions = const []})
      : _items = items,
        _perks = perks,
        _conditions = conditions,
        super._();

  factory _$_Character.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterFromJson(json);

  @override
  final String name;
  @override
  final int health;
  @override
  @JsonKey()
  final int? exp;
  @override
  @JsonKey()
  final int? gold;
  final List<Item> _items;
  @override
  @JsonKey()
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<Perk> _perks;
  @override
  @JsonKey()
  List<Perk> get perks {
    if (_perks is EqualUnmodifiableListView) return _perks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_perks);
  }

  final List<ConditionTypes> _conditions;
  @override
  @JsonKey()
  List<ConditionTypes> get conditions {
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

  @override
  String toString() {
    return 'Character(name: $name, health: $health, exp: $exp, gold: $gold, items: $items, perks: $perks, conditions: $conditions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Character &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.health, health) || other.health == health) &&
            (identical(other.exp, exp) || other.exp == exp) &&
            (identical(other.gold, gold) || other.gold == gold) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._perks, _perks) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      health,
      exp,
      gold,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_perks),
      const DeepCollectionEquality().hash(_conditions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterCopyWith<_$_Character> get copyWith =>
      __$$_CharacterCopyWithImpl<_$_Character>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterToJson(
      this,
    );
  }
}

abstract class _Character extends Character {
  factory _Character(
      {required final String name,
      required final int health,
      final int? exp,
      final int? gold,
      final List<Item> items,
      final List<Perk> perks,
      final List<ConditionTypes> conditions}) = _$_Character;
  _Character._() : super._();

  factory _Character.fromJson(Map<String, dynamic> json) =
      _$_Character.fromJson;

  @override
  String get name;
  @override
  int get health;
  @override
  int? get exp;
  @override
  int? get gold;
  @override
  List<Item> get items;
  @override
  List<Perk> get perks;
  @override
  List<ConditionTypes> get conditions;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterCopyWith<_$_Character> get copyWith =>
      throw _privateConstructorUsedError;
}

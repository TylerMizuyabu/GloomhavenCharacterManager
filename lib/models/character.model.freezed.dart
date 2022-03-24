// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return _Character.fromJson(json);
}

/// @nodoc
class _$CharacterTearOff {
  const _$CharacterTearOff();

  _Character call(
      {required String name,
      required int health,
      int? exp = 0,
      int? gold = 0,
      List<Item> items = const [],
      List<Perk> perks = const [],
      List<condition_types> conditions = const []}) {
    return _Character(
      name: name,
      health: health,
      exp: exp,
      gold: gold,
      items: items,
      perks: perks,
      conditions: conditions,
    );
  }

  Character fromJson(Map<String, Object?> json) {
    return Character.fromJson(json);
  }
}

/// @nodoc
const $Character = _$CharacterTearOff();

/// @nodoc
mixin _$Character {
  String get name => throw _privateConstructorUsedError;
  int get health => throw _privateConstructorUsedError;
  int? get exp => throw _privateConstructorUsedError;
  int? get gold => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;
  List<Perk> get perks => throw _privateConstructorUsedError;
  List<condition_types> get conditions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res>;
  $Res call(
      {String name,
      int health,
      int? exp,
      int? gold,
      List<Item> items,
      List<Perk> perks,
      List<condition_types> conditions});
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res> implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  final Character _value;
  // ignore: unused_field
  final $Res Function(Character) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? health = freezed,
    Object? exp = freezed,
    Object? gold = freezed,
    Object? items = freezed,
    Object? perks = freezed,
    Object? conditions = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      health: health == freezed
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as int,
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int?,
      gold: gold == freezed
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as int?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      perks: perks == freezed
          ? _value.perks
          : perks // ignore: cast_nullable_to_non_nullable
              as List<Perk>,
      conditions: conditions == freezed
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<condition_types>,
    ));
  }
}

/// @nodoc
abstract class _$CharacterCopyWith<$Res> implements $CharacterCopyWith<$Res> {
  factory _$CharacterCopyWith(
          _Character value, $Res Function(_Character) then) =
      __$CharacterCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      int health,
      int? exp,
      int? gold,
      List<Item> items,
      List<Perk> perks,
      List<condition_types> conditions});
}

/// @nodoc
class __$CharacterCopyWithImpl<$Res> extends _$CharacterCopyWithImpl<$Res>
    implements _$CharacterCopyWith<$Res> {
  __$CharacterCopyWithImpl(_Character _value, $Res Function(_Character) _then)
      : super(_value, (v) => _then(v as _Character));

  @override
  _Character get _value => super._value as _Character;

  @override
  $Res call({
    Object? name = freezed,
    Object? health = freezed,
    Object? exp = freezed,
    Object? gold = freezed,
    Object? items = freezed,
    Object? perks = freezed,
    Object? conditions = freezed,
  }) {
    return _then(_Character(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      health: health == freezed
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as int,
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int?,
      gold: gold == freezed
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as int?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      perks: perks == freezed
          ? _value.perks
          : perks // ignore: cast_nullable_to_non_nullable
              as List<Perk>,
      conditions: conditions == freezed
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<condition_types>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Character implements _Character {
  _$_Character(
      {required this.name,
      required this.health,
      this.exp = 0,
      this.gold = 0,
      this.items = const [],
      this.perks = const [],
      this.conditions = const []});

  factory _$_Character.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterFromJson(json);

  @override
  final String name;
  @override
  final int health;
  @JsonKey()
  @override
  final int? exp;
  @JsonKey()
  @override
  final int? gold;
  @JsonKey()
  @override
  final List<Item> items;
  @JsonKey()
  @override
  final List<Perk> perks;
  @JsonKey()
  @override
  final List<condition_types> conditions;

  @override
  String toString() {
    return 'Character(name: $name, health: $health, exp: $exp, gold: $gold, items: $items, perks: $perks, conditions: $conditions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Character &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.health, health) &&
            const DeepCollectionEquality().equals(other.exp, exp) &&
            const DeepCollectionEquality().equals(other.gold, gold) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.perks, perks) &&
            const DeepCollectionEquality()
                .equals(other.conditions, conditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(health),
      const DeepCollectionEquality().hash(exp),
      const DeepCollectionEquality().hash(gold),
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(perks),
      const DeepCollectionEquality().hash(conditions));

  @JsonKey(ignore: true)
  @override
  _$CharacterCopyWith<_Character> get copyWith =>
      __$CharacterCopyWithImpl<_Character>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterToJson(this);
  }
}

abstract class _Character implements Character {
  factory _Character(
      {required String name,
      required int health,
      int? exp,
      int? gold,
      List<Item> items,
      List<Perk> perks,
      List<condition_types> conditions}) = _$_Character;

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
  List<condition_types> get conditions;
  @override
  @JsonKey(ignore: true)
  _$CharacterCopyWith<_Character> get copyWith =>
      throw _privateConstructorUsedError;
}

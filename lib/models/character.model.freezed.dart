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

/// @nodoc
class _$CharacterTearOff {
  const _$CharacterTearOff();

  _Character call(
      {required String name,
      int? exp = 0,
      int? gold = 0,
      List<Item> items = const [],
      List<Perk> perks = const []}) {
    return _Character(
      name: name,
      exp: exp,
      gold: gold,
      items: items,
      perks: perks,
    );
  }
}

/// @nodoc
const $Character = _$CharacterTearOff();

/// @nodoc
mixin _$Character {
  String get name => throw _privateConstructorUsedError;
  int? get exp => throw _privateConstructorUsedError;
  int? get gold => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;
  List<Perk> get perks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res>;
  $Res call(
      {String name, int? exp, int? gold, List<Item> items, List<Perk> perks});
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
    Object? exp = freezed,
    Object? gold = freezed,
    Object? items = freezed,
    Object? perks = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      {String name, int? exp, int? gold, List<Item> items, List<Perk> perks});
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
    Object? exp = freezed,
    Object? gold = freezed,
    Object? items = freezed,
    Object? perks = freezed,
  }) {
    return _then(_Character(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc

class _$_Character implements _Character {
  _$_Character(
      {required this.name,
      this.exp = 0,
      this.gold = 0,
      this.items = const [],
      this.perks = const []});

  @override
  final String name;
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

  @override
  String toString() {
    return 'Character(name: $name, exp: $exp, gold: $gold, items: $items, perks: $perks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Character &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.exp, exp) &&
            const DeepCollectionEquality().equals(other.gold, gold) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.perks, perks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(exp),
      const DeepCollectionEquality().hash(gold),
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(perks));

  @JsonKey(ignore: true)
  @override
  _$CharacterCopyWith<_Character> get copyWith =>
      __$CharacterCopyWithImpl<_Character>(this, _$identity);
}

abstract class _Character implements Character {
  factory _Character(
      {required String name,
      int? exp,
      int? gold,
      List<Item> items,
      List<Perk> perks}) = _$_Character;

  @override
  String get name;
  @override
  int? get exp;
  @override
  int? get gold;
  @override
  List<Item> get items;
  @override
  List<Perk> get perks;
  @override
  @JsonKey(ignore: true)
  _$CharacterCopyWith<_Character> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'perk.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PerkTearOff {
  const _$PerkTearOff();

  _Perk call(
      {required perk_action action,
      required Modifier mod_1,
      int mod1Quantity = 1,
      Modifier? mod_2,
      int? mod2Quantity,
      int maxUses = 1,
      int used = 0}) {
    return _Perk(
      action: action,
      mod_1: mod_1,
      mod1Quantity: mod1Quantity,
      mod_2: mod_2,
      mod2Quantity: mod2Quantity,
      maxUses: maxUses,
      used: used,
    );
  }
}

/// @nodoc
const $Perk = _$PerkTearOff();

/// @nodoc
mixin _$Perk {
  perk_action get action => throw _privateConstructorUsedError;
  Modifier get mod_1 => throw _privateConstructorUsedError;
  int get mod1Quantity => throw _privateConstructorUsedError;
  Modifier? get mod_2 => throw _privateConstructorUsedError;
  int? get mod2Quantity => throw _privateConstructorUsedError;
  int get maxUses => throw _privateConstructorUsedError;
  int get used => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PerkCopyWith<Perk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerkCopyWith<$Res> {
  factory $PerkCopyWith(Perk value, $Res Function(Perk) then) =
      _$PerkCopyWithImpl<$Res>;
  $Res call(
      {perk_action action,
      Modifier mod_1,
      int mod1Quantity,
      Modifier? mod_2,
      int? mod2Quantity,
      int maxUses,
      int used});

  $ModifierCopyWith<$Res> get mod_1;
  $ModifierCopyWith<$Res>? get mod_2;
}

/// @nodoc
class _$PerkCopyWithImpl<$Res> implements $PerkCopyWith<$Res> {
  _$PerkCopyWithImpl(this._value, this._then);

  final Perk _value;
  // ignore: unused_field
  final $Res Function(Perk) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? mod_1 = freezed,
    Object? mod1Quantity = freezed,
    Object? mod_2 = freezed,
    Object? mod2Quantity = freezed,
    Object? maxUses = freezed,
    Object? used = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as perk_action,
      mod_1: mod_1 == freezed
          ? _value.mod_1
          : mod_1 // ignore: cast_nullable_to_non_nullable
              as Modifier,
      mod1Quantity: mod1Quantity == freezed
          ? _value.mod1Quantity
          : mod1Quantity // ignore: cast_nullable_to_non_nullable
              as int,
      mod_2: mod_2 == freezed
          ? _value.mod_2
          : mod_2 // ignore: cast_nullable_to_non_nullable
              as Modifier?,
      mod2Quantity: mod2Quantity == freezed
          ? _value.mod2Quantity
          : mod2Quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      maxUses: maxUses == freezed
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as int,
      used: used == freezed
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ModifierCopyWith<$Res> get mod_1 {
    return $ModifierCopyWith<$Res>(_value.mod_1, (value) {
      return _then(_value.copyWith(mod_1: value));
    });
  }

  @override
  $ModifierCopyWith<$Res>? get mod_2 {
    if (_value.mod_2 == null) {
      return null;
    }

    return $ModifierCopyWith<$Res>(_value.mod_2!, (value) {
      return _then(_value.copyWith(mod_2: value));
    });
  }
}

/// @nodoc
abstract class _$PerkCopyWith<$Res> implements $PerkCopyWith<$Res> {
  factory _$PerkCopyWith(_Perk value, $Res Function(_Perk) then) =
      __$PerkCopyWithImpl<$Res>;
  @override
  $Res call(
      {perk_action action,
      Modifier mod_1,
      int mod1Quantity,
      Modifier? mod_2,
      int? mod2Quantity,
      int maxUses,
      int used});

  @override
  $ModifierCopyWith<$Res> get mod_1;
  @override
  $ModifierCopyWith<$Res>? get mod_2;
}

/// @nodoc
class __$PerkCopyWithImpl<$Res> extends _$PerkCopyWithImpl<$Res>
    implements _$PerkCopyWith<$Res> {
  __$PerkCopyWithImpl(_Perk _value, $Res Function(_Perk) _then)
      : super(_value, (v) => _then(v as _Perk));

  @override
  _Perk get _value => super._value as _Perk;

  @override
  $Res call({
    Object? action = freezed,
    Object? mod_1 = freezed,
    Object? mod1Quantity = freezed,
    Object? mod_2 = freezed,
    Object? mod2Quantity = freezed,
    Object? maxUses = freezed,
    Object? used = freezed,
  }) {
    return _then(_Perk(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as perk_action,
      mod_1: mod_1 == freezed
          ? _value.mod_1
          : mod_1 // ignore: cast_nullable_to_non_nullable
              as Modifier,
      mod1Quantity: mod1Quantity == freezed
          ? _value.mod1Quantity
          : mod1Quantity // ignore: cast_nullable_to_non_nullable
              as int,
      mod_2: mod_2 == freezed
          ? _value.mod_2
          : mod_2 // ignore: cast_nullable_to_non_nullable
              as Modifier?,
      mod2Quantity: mod2Quantity == freezed
          ? _value.mod2Quantity
          : mod2Quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      maxUses: maxUses == freezed
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as int,
      used: used == freezed
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Perk implements _Perk {
  _$_Perk(
      {required this.action,
      required this.mod_1,
      this.mod1Quantity = 1,
      this.mod_2,
      this.mod2Quantity,
      this.maxUses = 1,
      this.used = 0});

  @override
  final perk_action action;
  @override
  final Modifier mod_1;
  @JsonKey()
  @override
  final int mod1Quantity;
  @override
  final Modifier? mod_2;
  @override
  final int? mod2Quantity;
  @JsonKey()
  @override
  final int maxUses;
  @JsonKey()
  @override
  final int used;

  @override
  String toString() {
    return 'Perk(action: $action, mod_1: $mod_1, mod1Quantity: $mod1Quantity, mod_2: $mod_2, mod2Quantity: $mod2Quantity, maxUses: $maxUses, used: $used)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Perk &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality().equals(other.mod_1, mod_1) &&
            const DeepCollectionEquality()
                .equals(other.mod1Quantity, mod1Quantity) &&
            const DeepCollectionEquality().equals(other.mod_2, mod_2) &&
            const DeepCollectionEquality()
                .equals(other.mod2Quantity, mod2Quantity) &&
            const DeepCollectionEquality().equals(other.maxUses, maxUses) &&
            const DeepCollectionEquality().equals(other.used, used));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(mod_1),
      const DeepCollectionEquality().hash(mod1Quantity),
      const DeepCollectionEquality().hash(mod_2),
      const DeepCollectionEquality().hash(mod2Quantity),
      const DeepCollectionEquality().hash(maxUses),
      const DeepCollectionEquality().hash(used));

  @JsonKey(ignore: true)
  @override
  _$PerkCopyWith<_Perk> get copyWith =>
      __$PerkCopyWithImpl<_Perk>(this, _$identity);
}

abstract class _Perk implements Perk {
  factory _Perk(
      {required perk_action action,
      required Modifier mod_1,
      int mod1Quantity,
      Modifier? mod_2,
      int? mod2Quantity,
      int maxUses,
      int used}) = _$_Perk;

  @override
  perk_action get action;
  @override
  Modifier get mod_1;
  @override
  int get mod1Quantity;
  @override
  Modifier? get mod_2;
  @override
  int? get mod2Quantity;
  @override
  int get maxUses;
  @override
  int get used;
  @override
  @JsonKey(ignore: true)
  _$PerkCopyWith<_Perk> get copyWith => throw _privateConstructorUsedError;
}

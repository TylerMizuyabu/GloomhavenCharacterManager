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
      required Map<Modifier, int> modifierUpdates,
      int maxUses = 1,
      int used = 0,
      String sideEffect = ''}) {
    return _Perk(
      action: action,
      modifierUpdates: modifierUpdates,
      maxUses: maxUses,
      used: used,
      sideEffect: sideEffect,
    );
  }
}

/// @nodoc
const $Perk = _$PerkTearOff();

/// @nodoc
mixin _$Perk {
  perk_action get action => throw _privateConstructorUsedError;
  Map<Modifier, int> get modifierUpdates => throw _privateConstructorUsedError;
  int get maxUses => throw _privateConstructorUsedError;
  int get used => throw _privateConstructorUsedError;
  String get sideEffect => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PerkCopyWith<Perk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerkCopyWith<$Res> {
  factory $PerkCopyWith(Perk value, $Res Function(Perk) then) =
      _$PerkCopyWithImpl<$Res>;
  $Res call(
      {perk_action action,
      Map<Modifier, int> modifierUpdates,
      int maxUses,
      int used,
      String sideEffect});
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
    Object? modifierUpdates = freezed,
    Object? maxUses = freezed,
    Object? used = freezed,
    Object? sideEffect = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as perk_action,
      modifierUpdates: modifierUpdates == freezed
          ? _value.modifierUpdates
          : modifierUpdates // ignore: cast_nullable_to_non_nullable
              as Map<Modifier, int>,
      maxUses: maxUses == freezed
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as int,
      used: used == freezed
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as int,
      sideEffect: sideEffect == freezed
          ? _value.sideEffect
          : sideEffect // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PerkCopyWith<$Res> implements $PerkCopyWith<$Res> {
  factory _$PerkCopyWith(_Perk value, $Res Function(_Perk) then) =
      __$PerkCopyWithImpl<$Res>;
  @override
  $Res call(
      {perk_action action,
      Map<Modifier, int> modifierUpdates,
      int maxUses,
      int used,
      String sideEffect});
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
    Object? modifierUpdates = freezed,
    Object? maxUses = freezed,
    Object? used = freezed,
    Object? sideEffect = freezed,
  }) {
    return _then(_Perk(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as perk_action,
      modifierUpdates: modifierUpdates == freezed
          ? _value.modifierUpdates
          : modifierUpdates // ignore: cast_nullable_to_non_nullable
              as Map<Modifier, int>,
      maxUses: maxUses == freezed
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as int,
      used: used == freezed
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as int,
      sideEffect: sideEffect == freezed
          ? _value.sideEffect
          : sideEffect // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Perk implements _Perk {
  _$_Perk(
      {required this.action,
      required this.modifierUpdates,
      this.maxUses = 1,
      this.used = 0,
      this.sideEffect = ''});

  @override
  final perk_action action;
  @override
  final Map<Modifier, int> modifierUpdates;
  @JsonKey()
  @override
  final int maxUses;
  @JsonKey()
  @override
  final int used;
  @JsonKey()
  @override
  final String sideEffect;

  @override
  String toString() {
    return 'Perk(action: $action, modifierUpdates: $modifierUpdates, maxUses: $maxUses, used: $used, sideEffect: $sideEffect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Perk &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality()
                .equals(other.modifierUpdates, modifierUpdates) &&
            const DeepCollectionEquality().equals(other.maxUses, maxUses) &&
            const DeepCollectionEquality().equals(other.used, used) &&
            const DeepCollectionEquality()
                .equals(other.sideEffect, sideEffect));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(modifierUpdates),
      const DeepCollectionEquality().hash(maxUses),
      const DeepCollectionEquality().hash(used),
      const DeepCollectionEquality().hash(sideEffect));

  @JsonKey(ignore: true)
  @override
  _$PerkCopyWith<_Perk> get copyWith =>
      __$PerkCopyWithImpl<_Perk>(this, _$identity);
}

abstract class _Perk implements Perk {
  factory _Perk(
      {required perk_action action,
      required Map<Modifier, int> modifierUpdates,
      int maxUses,
      int used,
      String sideEffect}) = _$_Perk;

  @override
  perk_action get action;
  @override
  Map<Modifier, int> get modifierUpdates;
  @override
  int get maxUses;
  @override
  int get used;
  @override
  String get sideEffect;
  @override
  @JsonKey(ignore: true)
  _$PerkCopyWith<_Perk> get copyWith => throw _privateConstructorUsedError;
}

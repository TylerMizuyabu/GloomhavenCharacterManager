// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'modifier_update.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModifierUpdate _$ModifierUpdateFromJson(Map<String, dynamic> json) {
  return _ModifierUpdate.fromJson(json);
}

/// @nodoc
class _$ModifierUpdateTearOff {
  const _$ModifierUpdateTearOff();

  _ModifierUpdate call({required Modifier modifier, required int change}) {
    return _ModifierUpdate(
      modifier: modifier,
      change: change,
    );
  }

  ModifierUpdate fromJson(Map<String, Object?> json) {
    return ModifierUpdate.fromJson(json);
  }
}

/// @nodoc
const $ModifierUpdate = _$ModifierUpdateTearOff();

/// @nodoc
mixin _$ModifierUpdate {
  Modifier get modifier => throw _privateConstructorUsedError;
  int get change => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModifierUpdateCopyWith<ModifierUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifierUpdateCopyWith<$Res> {
  factory $ModifierUpdateCopyWith(
          ModifierUpdate value, $Res Function(ModifierUpdate) then) =
      _$ModifierUpdateCopyWithImpl<$Res>;
  $Res call({Modifier modifier, int change});

  $ModifierCopyWith<$Res> get modifier;
}

/// @nodoc
class _$ModifierUpdateCopyWithImpl<$Res>
    implements $ModifierUpdateCopyWith<$Res> {
  _$ModifierUpdateCopyWithImpl(this._value, this._then);

  final ModifierUpdate _value;
  // ignore: unused_field
  final $Res Function(ModifierUpdate) _then;

  @override
  $Res call({
    Object? modifier = freezed,
    Object? change = freezed,
  }) {
    return _then(_value.copyWith(
      modifier: modifier == freezed
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as Modifier,
      change: change == freezed
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ModifierCopyWith<$Res> get modifier {
    return $ModifierCopyWith<$Res>(_value.modifier, (value) {
      return _then(_value.copyWith(modifier: value));
    });
  }
}

/// @nodoc
abstract class _$ModifierUpdateCopyWith<$Res>
    implements $ModifierUpdateCopyWith<$Res> {
  factory _$ModifierUpdateCopyWith(
          _ModifierUpdate value, $Res Function(_ModifierUpdate) then) =
      __$ModifierUpdateCopyWithImpl<$Res>;
  @override
  $Res call({Modifier modifier, int change});

  @override
  $ModifierCopyWith<$Res> get modifier;
}

/// @nodoc
class __$ModifierUpdateCopyWithImpl<$Res>
    extends _$ModifierUpdateCopyWithImpl<$Res>
    implements _$ModifierUpdateCopyWith<$Res> {
  __$ModifierUpdateCopyWithImpl(
      _ModifierUpdate _value, $Res Function(_ModifierUpdate) _then)
      : super(_value, (v) => _then(v as _ModifierUpdate));

  @override
  _ModifierUpdate get _value => super._value as _ModifierUpdate;

  @override
  $Res call({
    Object? modifier = freezed,
    Object? change = freezed,
  }) {
    return _then(_ModifierUpdate(
      modifier: modifier == freezed
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as Modifier,
      change: change == freezed
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModifierUpdate implements _ModifierUpdate {
  _$_ModifierUpdate({required this.modifier, required this.change});

  factory _$_ModifierUpdate.fromJson(Map<String, dynamic> json) =>
      _$$_ModifierUpdateFromJson(json);

  @override
  final Modifier modifier;
  @override
  final int change;

  @override
  String toString() {
    return 'ModifierUpdate(modifier: $modifier, change: $change)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModifierUpdate &&
            const DeepCollectionEquality().equals(other.modifier, modifier) &&
            const DeepCollectionEquality().equals(other.change, change));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(modifier),
      const DeepCollectionEquality().hash(change));

  @JsonKey(ignore: true)
  @override
  _$ModifierUpdateCopyWith<_ModifierUpdate> get copyWith =>
      __$ModifierUpdateCopyWithImpl<_ModifierUpdate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModifierUpdateToJson(this);
  }
}

abstract class _ModifierUpdate implements ModifierUpdate {
  factory _ModifierUpdate({required Modifier modifier, required int change}) =
      _$_ModifierUpdate;

  factory _ModifierUpdate.fromJson(Map<String, dynamic> json) =
      _$_ModifierUpdate.fromJson;

  @override
  Modifier get modifier;
  @override
  int get change;
  @override
  @JsonKey(ignore: true)
  _$ModifierUpdateCopyWith<_ModifierUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modifier_update.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModifierUpdate _$ModifierUpdateFromJson(Map<String, dynamic> json) {
  return _ModifierUpdate.fromJson(json);
}

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
      _$ModifierUpdateCopyWithImpl<$Res, ModifierUpdate>;
  @useResult
  $Res call({Modifier modifier, int change});

  $ModifierCopyWith<$Res> get modifier;
}

/// @nodoc
class _$ModifierUpdateCopyWithImpl<$Res, $Val extends ModifierUpdate>
    implements $ModifierUpdateCopyWith<$Res> {
  _$ModifierUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modifier = null,
    Object? change = null,
  }) {
    return _then(_value.copyWith(
      modifier: null == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as Modifier,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ModifierCopyWith<$Res> get modifier {
    return $ModifierCopyWith<$Res>(_value.modifier, (value) {
      return _then(_value.copyWith(modifier: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ModifierUpdateCopyWith<$Res>
    implements $ModifierUpdateCopyWith<$Res> {
  factory _$$_ModifierUpdateCopyWith(
          _$_ModifierUpdate value, $Res Function(_$_ModifierUpdate) then) =
      __$$_ModifierUpdateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Modifier modifier, int change});

  @override
  $ModifierCopyWith<$Res> get modifier;
}

/// @nodoc
class __$$_ModifierUpdateCopyWithImpl<$Res>
    extends _$ModifierUpdateCopyWithImpl<$Res, _$_ModifierUpdate>
    implements _$$_ModifierUpdateCopyWith<$Res> {
  __$$_ModifierUpdateCopyWithImpl(
      _$_ModifierUpdate _value, $Res Function(_$_ModifierUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modifier = null,
    Object? change = null,
  }) {
    return _then(_$_ModifierUpdate(
      modifier: null == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as Modifier,
      change: null == change
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
            other is _$_ModifierUpdate &&
            (identical(other.modifier, modifier) ||
                other.modifier == modifier) &&
            (identical(other.change, change) || other.change == change));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, modifier, change);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModifierUpdateCopyWith<_$_ModifierUpdate> get copyWith =>
      __$$_ModifierUpdateCopyWithImpl<_$_ModifierUpdate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModifierUpdateToJson(
      this,
    );
  }
}

abstract class _ModifierUpdate implements ModifierUpdate {
  factory _ModifierUpdate(
      {required final Modifier modifier,
      required final int change}) = _$_ModifierUpdate;

  factory _ModifierUpdate.fromJson(Map<String, dynamic> json) =
      _$_ModifierUpdate.fromJson;

  @override
  Modifier get modifier;
  @override
  int get change;
  @override
  @JsonKey(ignore: true)
  _$$_ModifierUpdateCopyWith<_$_ModifierUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

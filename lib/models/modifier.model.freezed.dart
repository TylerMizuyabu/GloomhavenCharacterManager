// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'modifier.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ModifierTearOff {
  const _$ModifierTearOff();

  _Modifier call(
      {required modifier_value value,
      element_type element = element_type.none,
      bool shuffle = false,
      bool rolling = false,
      conditions condition = conditions.none,
      effects effect = effects.none}) {
    return _Modifier(
      value: value,
      element: element,
      shuffle: shuffle,
      rolling: rolling,
      condition: condition,
      effect: effect,
    );
  }
}

/// @nodoc
const $Modifier = _$ModifierTearOff();

/// @nodoc
mixin _$Modifier {
  modifier_value get value => throw _privateConstructorUsedError;
  element_type get element => throw _privateConstructorUsedError;
  bool get shuffle => throw _privateConstructorUsedError;
  bool get rolling => throw _privateConstructorUsedError;
  conditions get condition => throw _privateConstructorUsedError;
  effects get effect => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModifierCopyWith<Modifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifierCopyWith<$Res> {
  factory $ModifierCopyWith(Modifier value, $Res Function(Modifier) then) =
      _$ModifierCopyWithImpl<$Res>;
  $Res call(
      {modifier_value value,
      element_type element,
      bool shuffle,
      bool rolling,
      conditions condition,
      effects effect});
}

/// @nodoc
class _$ModifierCopyWithImpl<$Res> implements $ModifierCopyWith<$Res> {
  _$ModifierCopyWithImpl(this._value, this._then);

  final Modifier _value;
  // ignore: unused_field
  final $Res Function(Modifier) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? element = freezed,
    Object? shuffle = freezed,
    Object? rolling = freezed,
    Object? condition = freezed,
    Object? effect = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as modifier_value,
      element: element == freezed
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as element_type,
      shuffle: shuffle == freezed
          ? _value.shuffle
          : shuffle // ignore: cast_nullable_to_non_nullable
              as bool,
      rolling: rolling == freezed
          ? _value.rolling
          : rolling // ignore: cast_nullable_to_non_nullable
              as bool,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as conditions,
      effect: effect == freezed
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as effects,
    ));
  }
}

/// @nodoc
abstract class _$ModifierCopyWith<$Res> implements $ModifierCopyWith<$Res> {
  factory _$ModifierCopyWith(_Modifier value, $Res Function(_Modifier) then) =
      __$ModifierCopyWithImpl<$Res>;
  @override
  $Res call(
      {modifier_value value,
      element_type element,
      bool shuffle,
      bool rolling,
      conditions condition,
      effects effect});
}

/// @nodoc
class __$ModifierCopyWithImpl<$Res> extends _$ModifierCopyWithImpl<$Res>
    implements _$ModifierCopyWith<$Res> {
  __$ModifierCopyWithImpl(_Modifier _value, $Res Function(_Modifier) _then)
      : super(_value, (v) => _then(v as _Modifier));

  @override
  _Modifier get _value => super._value as _Modifier;

  @override
  $Res call({
    Object? value = freezed,
    Object? element = freezed,
    Object? shuffle = freezed,
    Object? rolling = freezed,
    Object? condition = freezed,
    Object? effect = freezed,
  }) {
    return _then(_Modifier(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as modifier_value,
      element: element == freezed
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as element_type,
      shuffle: shuffle == freezed
          ? _value.shuffle
          : shuffle // ignore: cast_nullable_to_non_nullable
              as bool,
      rolling: rolling == freezed
          ? _value.rolling
          : rolling // ignore: cast_nullable_to_non_nullable
              as bool,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as conditions,
      effect: effect == freezed
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as effects,
    ));
  }
}

/// @nodoc

class _$_Modifier implements _Modifier {
  _$_Modifier(
      {required this.value,
      this.element = element_type.none,
      this.shuffle = false,
      this.rolling = false,
      this.condition = conditions.none,
      this.effect = effects.none});

  @override
  final modifier_value value;
  @JsonKey()
  @override
  final element_type element;
  @JsonKey()
  @override
  final bool shuffle;
  @JsonKey()
  @override
  final bool rolling;
  @JsonKey()
  @override
  final conditions condition;
  @JsonKey()
  @override
  final effects effect;

  @override
  String toString() {
    return 'Modifier(value: $value, element: $element, shuffle: $shuffle, rolling: $rolling, condition: $condition, effect: $effect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Modifier &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.element, element) &&
            const DeepCollectionEquality().equals(other.shuffle, shuffle) &&
            const DeepCollectionEquality().equals(other.rolling, rolling) &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality().equals(other.effect, effect));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(element),
      const DeepCollectionEquality().hash(shuffle),
      const DeepCollectionEquality().hash(rolling),
      const DeepCollectionEquality().hash(condition),
      const DeepCollectionEquality().hash(effect));

  @JsonKey(ignore: true)
  @override
  _$ModifierCopyWith<_Modifier> get copyWith =>
      __$ModifierCopyWithImpl<_Modifier>(this, _$identity);
}

abstract class _Modifier implements Modifier {
  factory _Modifier(
      {required modifier_value value,
      element_type element,
      bool shuffle,
      bool rolling,
      conditions condition,
      effects effect}) = _$_Modifier;

  @override
  modifier_value get value;
  @override
  element_type get element;
  @override
  bool get shuffle;
  @override
  bool get rolling;
  @override
  conditions get condition;
  @override
  effects get effect;
  @override
  @JsonKey(ignore: true)
  _$ModifierCopyWith<_Modifier> get copyWith =>
      throw _privateConstructorUsedError;
}

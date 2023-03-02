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

Modifier _$ModifierFromJson(Map<String, dynamic> json) {
  return _Modifier.fromJson(json);
}

/// @nodoc
class _$ModifierTearOff {
  const _$ModifierTearOff();

  _Modifier call(
      {required ModifierValue value,
      List<ElementTypes> elements = const [],
      bool shuffle = false,
      bool rolling = false,
      ConditionTypes condition = ConditionTypes.none,
      EffectTypes effect = EffectTypes.none,
      int effectTargets = 1,
      int effectDamage = 0,
      BonusTypes bonus = BonusTypes.none,
      int bonusSize = 1}) {
    return _Modifier(
      value: value,
      elements: elements,
      shuffle: shuffle,
      rolling: rolling,
      condition: condition,
      effect: effect,
      effectTargets: effectTargets,
      effectDamage: effectDamage,
      bonus: bonus,
      bonusSize: bonusSize,
    );
  }

  Modifier fromJson(Map<String, Object?> json) {
    return Modifier.fromJson(json);
  }
}

/// @nodoc
const $Modifier = _$ModifierTearOff();

/// @nodoc
mixin _$Modifier {
  ModifierValue get value => throw _privateConstructorUsedError;
  List<ElementTypes> get elements => throw _privateConstructorUsedError;
  bool get shuffle => throw _privateConstructorUsedError;
  bool get rolling => throw _privateConstructorUsedError;
  ConditionTypes get condition => throw _privateConstructorUsedError;
  EffectTypes get effect => throw _privateConstructorUsedError;
  int get effectTargets => throw _privateConstructorUsedError;
  int get effectDamage => throw _privateConstructorUsedError;
  BonusTypes get bonus => throw _privateConstructorUsedError;
  int get bonusSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModifierCopyWith<Modifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifierCopyWith<$Res> {
  factory $ModifierCopyWith(Modifier value, $Res Function(Modifier) then) =
      _$ModifierCopyWithImpl<$Res>;
  $Res call(
      {ModifierValue value,
      List<ElementTypes> elements,
      bool shuffle,
      bool rolling,
      ConditionTypes condition,
      EffectTypes effect,
      int effectTargets,
      int effectDamage,
      BonusTypes bonus,
      int bonusSize});
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
    Object? elements = freezed,
    Object? shuffle = freezed,
    Object? rolling = freezed,
    Object? condition = freezed,
    Object? effect = freezed,
    Object? effectTargets = freezed,
    Object? effectDamage = freezed,
    Object? bonus = freezed,
    Object? bonusSize = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ModifierValue,
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<ElementTypes>,
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
              as ConditionTypes,
      effect: effect == freezed
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as EffectTypes,
      effectTargets: effectTargets == freezed
          ? _value.effectTargets
          : effectTargets // ignore: cast_nullable_to_non_nullable
              as int,
      effectDamage: effectDamage == freezed
          ? _value.effectDamage
          : effectDamage // ignore: cast_nullable_to_non_nullable
              as int,
      bonus: bonus == freezed
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as BonusTypes,
      bonusSize: bonusSize == freezed
          ? _value.bonusSize
          : bonusSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ModifierCopyWith<$Res> implements $ModifierCopyWith<$Res> {
  factory _$ModifierCopyWith(_Modifier value, $Res Function(_Modifier) then) =
      __$ModifierCopyWithImpl<$Res>;
  @override
  $Res call(
      {ModifierValue value,
      List<ElementTypes> elements,
      bool shuffle,
      bool rolling,
      ConditionTypes condition,
      EffectTypes effect,
      int effectTargets,
      int effectDamage,
      BonusTypes bonus,
      int bonusSize});
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
    Object? elements = freezed,
    Object? shuffle = freezed,
    Object? rolling = freezed,
    Object? condition = freezed,
    Object? effect = freezed,
    Object? effectTargets = freezed,
    Object? effectDamage = freezed,
    Object? bonus = freezed,
    Object? bonusSize = freezed,
  }) {
    return _then(_Modifier(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ModifierValue,
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<ElementTypes>,
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
              as ConditionTypes,
      effect: effect == freezed
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as EffectTypes,
      effectTargets: effectTargets == freezed
          ? _value.effectTargets
          : effectTargets // ignore: cast_nullable_to_non_nullable
              as int,
      effectDamage: effectDamage == freezed
          ? _value.effectDamage
          : effectDamage // ignore: cast_nullable_to_non_nullable
              as int,
      bonus: bonus == freezed
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as BonusTypes,
      bonusSize: bonusSize == freezed
          ? _value.bonusSize
          : bonusSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Modifier implements _Modifier {
  _$_Modifier(
      {required this.value,
      this.elements = const [],
      this.shuffle = false,
      this.rolling = false,
      this.condition = ConditionTypes.none,
      this.effect = EffectTypes.none,
      this.effectTargets = 1,
      this.effectDamage = 0,
      this.bonus = BonusTypes.none,
      this.bonusSize = 1});

  factory _$_Modifier.fromJson(Map<String, dynamic> json) =>
      _$$_ModifierFromJson(json);

  @override
  final ModifierValue value;
  @JsonKey()
  @override
  final List<ElementTypes> elements;
  @JsonKey()
  @override
  final bool shuffle;
  @JsonKey()
  @override
  final bool rolling;
  @JsonKey()
  @override
  final ConditionTypes condition;
  @JsonKey()
  @override
  final EffectTypes effect;
  @JsonKey()
  @override
  final int effectTargets;
  @JsonKey()
  @override
  final int effectDamage;
  @JsonKey()
  @override
  final BonusTypes bonus;
  @JsonKey()
  @override
  final int bonusSize;

  @override
  String toString() {
    return 'Modifier(value: $value, elements: $elements, shuffle: $shuffle, rolling: $rolling, condition: $condition, effect: $effect, effectTargets: $effectTargets, effectDamage: $effectDamage, bonus: $bonus, bonusSize: $bonusSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Modifier &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.elements, elements) &&
            const DeepCollectionEquality().equals(other.shuffle, shuffle) &&
            const DeepCollectionEquality().equals(other.rolling, rolling) &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality().equals(other.effect, effect) &&
            const DeepCollectionEquality()
                .equals(other.effectTargets, effectTargets) &&
            const DeepCollectionEquality()
                .equals(other.effectDamage, effectDamage) &&
            const DeepCollectionEquality().equals(other.bonus, bonus) &&
            const DeepCollectionEquality().equals(other.bonusSize, bonusSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(elements),
      const DeepCollectionEquality().hash(shuffle),
      const DeepCollectionEquality().hash(rolling),
      const DeepCollectionEquality().hash(condition),
      const DeepCollectionEquality().hash(effect),
      const DeepCollectionEquality().hash(effectTargets),
      const DeepCollectionEquality().hash(effectDamage),
      const DeepCollectionEquality().hash(bonus),
      const DeepCollectionEquality().hash(bonusSize));

  @JsonKey(ignore: true)
  @override
  _$ModifierCopyWith<_Modifier> get copyWith =>
      __$ModifierCopyWithImpl<_Modifier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModifierToJson(this);
  }
}

abstract class _Modifier implements Modifier {
  factory _Modifier(
      {required ModifierValue value,
      List<ElementTypes> elements,
      bool shuffle,
      bool rolling,
      ConditionTypes condition,
      EffectTypes effect,
      int effectTargets,
      int effectDamage,
      BonusTypes bonus,
      int bonusSize}) = _$_Modifier;

  factory _Modifier.fromJson(Map<String, dynamic> json) = _$_Modifier.fromJson;

  @override
  ModifierValue get value;
  @override
  List<ElementTypes> get elements;
  @override
  bool get shuffle;
  @override
  bool get rolling;
  @override
  ConditionTypes get condition;
  @override
  EffectTypes get effect;
  @override
  int get effectTargets;
  @override
  int get effectDamage;
  @override
  BonusTypes get bonus;
  @override
  int get bonusSize;
  @override
  @JsonKey(ignore: true)
  _$ModifierCopyWith<_Modifier> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Modifier _$$_ModifierFromJson(Map<String, dynamic> json) => _$_Modifier(
      value: $enumDecode(_$modifier_valueEnumMap, json['value']),
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$element_typesEnumMap, e))
              .toList() ??
          const [],
      shuffle: json['shuffle'] as bool? ?? false,
      rolling: json['rolling'] as bool? ?? false,
      condition:
          $enumDecodeNullable(_$condition_typesEnumMap, json['condition']) ??
              condition_types.none,
      effect: $enumDecodeNullable(_$effect_typesEnumMap, json['effect']) ??
          effect_types.none,
      effectTargets: json['effectTargets'] as int? ?? 1,
      bonus: $enumDecodeNullable(_$bonus_typesEnumMap, json['bonus']) ??
          bonus_types.none,
      bonusSize: json['bonusSize'] as int? ?? 1,
    );

Map<String, dynamic> _$$_ModifierToJson(_$_Modifier instance) =>
    <String, dynamic>{
      'value': _$modifier_valueEnumMap[instance.value],
      'elements':
          instance.elements.map((e) => _$element_typesEnumMap[e]).toList(),
      'shuffle': instance.shuffle,
      'rolling': instance.rolling,
      'condition': _$condition_typesEnumMap[instance.condition],
      'effect': _$effect_typesEnumMap[instance.effect],
      'effectTargets': instance.effectTargets,
      'bonus': _$bonus_typesEnumMap[instance.bonus],
      'bonusSize': instance.bonusSize,
    };

const _$modifier_valueEnumMap = {
  modifier_value.none: 'none',
  modifier_value.doubled: 'doubled',
  modifier_value.plusTwo: 'plusTwo',
  modifier_value.plusOne: 'plusOne',
  modifier_value.plusThree: 'plusThree',
  modifier_value.zero: 'zero',
  modifier_value.minusOne: 'minusOne',
  modifier_value.minusTwo: 'minusTwo',
};

const _$element_typesEnumMap = {
  element_types.none: 'none',
  element_types.fire: 'fire',
  element_types.ice: 'ice',
  element_types.air: 'air',
  element_types.earth: 'earth',
  element_types.light: 'light',
  element_types.dark: 'dark',
};

const _$condition_typesEnumMap = {
  condition_types.none: 'none',
  condition_types.bane: 'bane',
  condition_types.bless: 'bless',
  condition_types.brittle: 'brittle',
  condition_types.disarm: 'disarm',
  condition_types.curse: 'curse',
  condition_types.immobilize: 'immobilize',
  condition_types.injure: 'injure',
  condition_types.invisible: 'invisible',
  condition_types.muddle: 'muddle',
  condition_types.poison: 'poison',
  condition_types.regenerate: 'regenerate',
  condition_types.strengthen: 'strengthen',
  condition_types.stun: 'stun',
  condition_types.wound: 'wound',
};

const _$effect_typesEnumMap = {
  effect_types.none: 'none',
  effect_types.push: 'push',
  effect_types.pull: 'pull',
  effect_types.addTarget: 'addTarget',
  effect_types.teleport: 'teleport',
  effect_types.swap: 'swap',
};

const _$bonus_typesEnumMap = {
  bonus_types.none: 'none',
  bonus_types.heal: 'heal',
  bonus_types.shield: 'shield',
  bonus_types.retaliate: 'retaliate',
};

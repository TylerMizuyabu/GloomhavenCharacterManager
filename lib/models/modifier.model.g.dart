// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Modifier _$$_ModifierFromJson(Map<String, dynamic> json) => _$_Modifier(
      value: $enumDecode(_$ModifierValueEnumMap, json['value']),
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$ElementTypesEnumMap, e))
              .toList() ??
          const [],
      shuffle: json['shuffle'] as bool? ?? false,
      rolling: json['rolling'] as bool? ?? false,
      condition:
          $enumDecodeNullable(_$ConditionTypesEnumMap, json['condition']) ??
              ConditionTypes.none,
      effect: $enumDecodeNullable(_$EffectTypesEnumMap, json['effect']) ??
          EffectTypes.none,
      effectTargets: json['effectTargets'] as int? ?? 1,
      effectDamage: json['effectDamage'] as int? ?? 0,
      bonus: $enumDecodeNullable(_$BonusTypesEnumMap, json['bonus']) ??
          BonusTypes.none,
      bonusSize: json['bonusSize'] as int? ?? 1,
    );

Map<String, dynamic> _$$_ModifierToJson(_$_Modifier instance) =>
    <String, dynamic>{
      'value': _$ModifierValueEnumMap[instance.value]!,
      'elements':
          instance.elements.map((e) => _$ElementTypesEnumMap[e]!).toList(),
      'shuffle': instance.shuffle,
      'rolling': instance.rolling,
      'condition': _$ConditionTypesEnumMap[instance.condition]!,
      'effect': _$EffectTypesEnumMap[instance.effect]!,
      'effectTargets': instance.effectTargets,
      'effectDamage': instance.effectDamage,
      'bonus': _$BonusTypesEnumMap[instance.bonus]!,
      'bonusSize': instance.bonusSize,
    };

const _$ModifierValueEnumMap = {
  ModifierValue.none: 'none',
  ModifierValue.doubled: 'doubled',
  ModifierValue.plusTwo: 'plusTwo',
  ModifierValue.plusOne: 'plusOne',
  ModifierValue.plusThree: 'plusThree',
  ModifierValue.zero: 'zero',
  ModifierValue.minusOne: 'minusOne',
  ModifierValue.minusTwo: 'minusTwo',
};

const _$ElementTypesEnumMap = {
  ElementTypes.none: 'none',
  ElementTypes.fire: 'fire',
  ElementTypes.ice: 'ice',
  ElementTypes.air: 'air',
  ElementTypes.earth: 'earth',
  ElementTypes.light: 'light',
  ElementTypes.dark: 'dark',
};

const _$ConditionTypesEnumMap = {
  ConditionTypes.none: 'none',
  ConditionTypes.bane: 'bane',
  ConditionTypes.bless: 'bless',
  ConditionTypes.brittle: 'brittle',
  ConditionTypes.disarm: 'disarm',
  ConditionTypes.curse: 'curse',
  ConditionTypes.immobilize: 'immobilize',
  ConditionTypes.injure: 'injure',
  ConditionTypes.invisible: 'invisible',
  ConditionTypes.muddle: 'muddle',
  ConditionTypes.poison: 'poison',
  ConditionTypes.regenerate: 'regenerate',
  ConditionTypes.strengthen: 'strengthen',
  ConditionTypes.stun: 'stun',
  ConditionTypes.wound: 'wound',
};

const _$EffectTypesEnumMap = {
  EffectTypes.none: 'none',
  EffectTypes.push: 'push',
  EffectTypes.pull: 'pull',
  EffectTypes.addTarget: 'addTarget',
  EffectTypes.teleport: 'teleport',
  EffectTypes.swap: 'swap',
  EffectTypes.damageAdjacent: 'damageAdjacent',
};

const _$BonusTypesEnumMap = {
  BonusTypes.none: 'none',
  BonusTypes.heal: 'heal',
  BonusTypes.shield: 'shield',
  BonusTypes.retaliate: 'retaliate',
};

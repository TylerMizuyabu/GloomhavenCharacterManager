// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Character _$$_CharacterFromJson(Map<String, dynamic> json) => _$_Character(
      name: json['name'] as String? ?? '',
      health: json['health'] as int? ?? 0,
      characterClass: $enumDecodeNullable(
              _$CharacterClassEnumMap, json['characterClass']) ??
          CharacterClass.humanVoidwarden,
      exp: json['exp'] as int? ?? 0,
      gold: json['gold'] as int? ?? 0,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      perks: (json['perks'] as List<dynamic>?)
              ?.map((e) => Perk.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      conditions: (json['conditions'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$ConditionTypesEnumMap, e))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'name': instance.name,
      'health': instance.health,
      'characterClass': _$CharacterClassEnumMap[instance.characterClass]!,
      'exp': instance.exp,
      'gold': instance.gold,
      'items': instance.items,
      'perks': instance.perks,
      'conditions':
          instance.conditions.map((e) => _$ConditionTypesEnumMap[e]!).toList(),
    };

const _$CharacterClassEnumMap = {
  CharacterClass.quatrylDemolitionist: 'quatrylDemolitionist',
  CharacterClass.inoxHatchet: 'inoxHatchet',
  CharacterClass.humanVoidwarden: 'humanVoidwarden',
  CharacterClass.valrathRedGuard: 'valrathRedGuard',
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

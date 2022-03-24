// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Character _$$_CharacterFromJson(Map<String, dynamic> json) => _$_Character(
      name: json['name'] as String,
      health: json['health'] as int,
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
              ?.map((e) => $enumDecode(_$condition_typesEnumMap, e))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'name': instance.name,
      'health': instance.health,
      'exp': instance.exp,
      'gold': instance.gold,
      'items': instance.items,
      'perks': instance.perks,
      'conditions':
          instance.conditions.map((e) => _$condition_typesEnumMap[e]).toList(),
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perk.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Perk _$$_PerkFromJson(Map<String, dynamic> json) => _$_Perk(
      action: $enumDecode(_$PerkActionEnumMap, json['action']),
      modifierUpdates: (json['modifierUpdates'] as List<dynamic>)
          .map((e) => ModifierUpdate.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxUses: json['maxUses'] as int? ?? 1,
      used: json['used'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PerkToJson(_$_Perk instance) => <String, dynamic>{
      'action': _$PerkActionEnumMap[instance.action]!,
      'modifierUpdates': instance.modifierUpdates,
      'maxUses': instance.maxUses,
      'used': instance.used,
    };

const _$PerkActionEnumMap = {
  PerkAction.none: 'none',
  PerkAction.updateModifiers: 'updateModifiers',
};

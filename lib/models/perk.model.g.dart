// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perk.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Perk _$$_PerkFromJson(Map<String, dynamic> json) => _$_Perk(
      action: $enumDecode(_$perk_actionEnumMap, json['action']),
      modifierUpdates: (json['modifierUpdates'] as List<dynamic>)
          .map((e) => ModifierUpdate.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxUses: json['maxUses'] as int? ?? 1,
      used: json['used'] as int? ?? 0,
      sideEffect: json['sideEffect'] as String? ?? '',
    );

Map<String, dynamic> _$$_PerkToJson(_$_Perk instance) => <String, dynamic>{
      'action': _$perk_actionEnumMap[instance.action],
      'modifierUpdates': instance.modifierUpdates,
      'maxUses': instance.maxUses,
      'used': instance.used,
      'sideEffect': instance.sideEffect,
    };

const _$perk_actionEnumMap = {
  perk_action.none: 'none',
  perk_action.add: 'add',
  perk_action.remove: 'remove',
  perk_action.replace: 'replace',
};

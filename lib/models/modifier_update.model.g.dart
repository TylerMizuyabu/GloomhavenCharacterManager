// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_update.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModifierUpdate _$$_ModifierUpdateFromJson(Map<String, dynamic> json) =>
    _$_ModifierUpdate(
      modifier: Modifier.fromJson(json['modifier'] as Map<String, dynamic>),
      change: json['change'] as int,
    );

Map<String, dynamic> _$$_ModifierUpdateToJson(_$_ModifierUpdate instance) =>
    <String, dynamic>{
      'modifier': instance.modifier,
      'change': instance.change,
    };

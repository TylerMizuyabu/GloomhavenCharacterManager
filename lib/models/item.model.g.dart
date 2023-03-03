// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      name: json['name'] as String,
      id: json['id'] as int,
      description: json['description'] as String,
      equipSlot: $enumDecode(_$ItemEquipSlotEnumMap, json['equipSlot']),
      cost: json['cost'] as int? ?? 1,
      useType: $enumDecodeNullable(_$ItemUseTypeEnumMap, json['useType']) ??
          ItemUseType.infinite,
      uses: json['uses'] as int? ?? 1,
      additionalModifiers: (json['additionalModifiers'] as List<dynamic>?)
              ?.map((e) => Modifier.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'description': instance.description,
      'equipSlot': _$ItemEquipSlotEnumMap[instance.equipSlot]!,
      'cost': instance.cost,
      'useType': _$ItemUseTypeEnumMap[instance.useType]!,
      'uses': instance.uses,
      'additionalModifiers': instance.additionalModifiers,
    };

const _$ItemEquipSlotEnumMap = {
  ItemEquipSlot.head: 'head',
  ItemEquipSlot.body: 'body',
  ItemEquipSlot.legs: 'legs',
  ItemEquipSlot.oneHand: 'oneHand',
  ItemEquipSlot.twoHand: 'twoHand',
  ItemEquipSlot.smallItem: 'smallItem',
};

const _$ItemUseTypeEnumMap = {
  ItemUseType.infinite: 'infinite',
  ItemUseType.spend: 'spend',
  ItemUseType.consume: 'consume',
};

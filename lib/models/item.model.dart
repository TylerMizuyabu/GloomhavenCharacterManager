import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gloomhaven_utility/models/constants.dart';

import 'modifier.model.dart';

part 'item.model.freezed.dart';
part 'item.model.g.dart';

@freezed
class Item with _$Item {
  factory Item(
      {required String name,
      required int id,
      required String description,
      required ItemEquipSlot equipSlot,
      required int cost,
      required ItemUseType useType,
      @Default(1) int uses,
      @Default([]) List<Modifier> additionalModifiers}) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

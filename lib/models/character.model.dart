import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gloomhaven_character_manager/models/constants.dart';
import 'package:gloomhaven_character_manager/models/perk.model.dart';

import 'item.model.dart';
import 'modifier.model.dart';

part 'character.model.freezed.dart';

@freezed
class Character with _$Character {
  factory Character({
    required String name,
    required int health,
    @Default(0) int? exp,
    @Default(0) int? gold,
    @Default([]) List<Item> items,
    @Default([]) List<Perk> perks,
    @Default([]) List<condition_types> conditions,
  }) = _Character;
}

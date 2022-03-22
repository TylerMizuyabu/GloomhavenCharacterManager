import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gloomhaven_character_manager/models/constants.dart';
import 'package:gloomhaven_character_manager/models/perk.model.dart';

import 'item.model.dart';

part 'character.model.freezed.dart';

@freezed
class Character with _$Character {
  factory Character(
      {required String name,
      @Default(0) int? exp,
      @Default(0) int? gold,
      @Default([]) List<Item> items,
      @Default([]) List<Perk> perks}) = _Character;
}

Character generateQuatrylDemolitionist(String name) {
  // TODO finish the list of perks
  return Character(name: name, perks: [
    Perk(action: perk_action.remove, target: 'four (+0) cards'),
    Perk(action: perk_action.remove, target: 'two (-1) cards', maxUses: 2),
    Perk(action: perk_action.remove, target: 'one (-2) card and one (-1) card'),
    Perk(
      action: perk_action.replace,
      target: 'one (+0) card',
    )
  ]);
}

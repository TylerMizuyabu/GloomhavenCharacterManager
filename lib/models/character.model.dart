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
    @Default(0) int? exp,
    @Default(0) int? gold,
    @Default([]) List<Item> items,
    @Default([]) List<Perk> perks,
  }) = _Character;
}

Character generateQuatrylDemolitionist(String name) {
  return Character(name: name, perks: [
    Perk(
      action: perk_action.remove,
      modifierUpdates: {Modifier(value: modifier_value.zero): -4},
    ),
    Perk(
      action: perk_action.remove,
      modifierUpdates: {Modifier(value: modifier_value.minusOne): -2},
      maxUses: 2,
    ),
    Perk(
      action: perk_action.remove,
      modifierUpdates: {
        Modifier(value: modifier_value.minusTwo): -1,
        Modifier(value: modifier_value.plusOne): -1
      },
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.zero): -1,
        Modifier(value: modifier_value.plusTwo, condition: conditions.muddle): 1
      },
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.minusOne): -1,
        Modifier(value: modifier_value.zero, condition: conditions.poison): 1,
      },
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: {Modifier(value: modifier_value.plusTwo): 1},
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.plusOne): -1,
        Modifier(value: modifier_value.plusTwo, element: elements.earth): 1
      },
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.plusOne): -1,
        Modifier(value: modifier_value.plusTwo, element: elements.fire): 1,
      },
      maxUses: 2,
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: {Modifier(value: modifier_value.zero): 1},
      maxUses: 2,
      sideEffect: 'All adjacent enemies suffer 1 damage',
    )
  ]);
}

import 'perk.model.dart';
import 'constants.dart';
import 'character.model.dart';
import 'modifier.model.dart';

Character generateQuatrylDemolitionist(String name, {int health = 10}) {
  return Character(name: name, health: health, perks: [
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
        Modifier(
            value: modifier_value.plusTwo, condition: condition_types.muddle): 1
      },
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.minusOne): -1,
        Modifier(value: modifier_value.zero, condition: condition_types.poison):
            1,
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
        Modifier(
            value: modifier_value.plusTwo, elements: [element_types.earth]): 1
      },
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.plusOne): -1,
        Modifier(value: modifier_value.plusTwo, elements: [element_types.fire]):
            1,
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

Character generateInoxHatchet(String name, {int health = 10}) {
  return Character(name: name, health: health, perks: [
    Perk(
      action: perk_action.remove,
      modifierUpdates: {Modifier(value: modifier_value.minusOne): -2},
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.zero): -1,
        Modifier(
            value: modifier_value.plusTwo, condition: condition_types.muddle): 1
      },
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.zero): -1,
        Modifier(
          value: modifier_value.plusOne,
          condition: condition_types.poison,
        ): 1
      },
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.zero): -1,
        Modifier(
          value: modifier_value.plusOne,
          condition: condition_types.wound,
        ): 1
      },
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.zero): -1,
        Modifier(
          value: modifier_value.plusOne,
          condition: condition_types.immobilize,
        ): 1
      },
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.zero): -1,
        Modifier(
          value: modifier_value.plusOne,
          effect: effect_types.push,
          effectTargets: 2,
        ): 1
      },
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.zero): -1,
        Modifier(
          value: modifier_value.zero,
          condition: condition_types.stun,
        ): 1
      },
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.plusOne): -1,
        Modifier(
          value: modifier_value.plusOne,
          condition: condition_types.stun,
        ): 1
      },
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: {
        Modifier(value: modifier_value.plusTwo, elements: [element_types.air]):
            1,
      },
      maxUses: 3,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.plusOne): -1,
        Modifier(value: modifier_value.plusThree): 1
      },
      maxUses: 3,
    ),
  ]);
}

Character generateHumanVoidwarden(String name, {int health = 6}) {
  return Character(name: name, health: health, perks: [
    Perk(
      action: perk_action.remove,
      modifierUpdates: {Modifier(value: modifier_value.minusOne): -2},
    ),
    Perk(
      action: perk_action.remove,
      modifierUpdates: {Modifier(value: modifier_value.minusTwo): -1},
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.zero): -1,
        Modifier(value: modifier_value.plusOne, elements: [element_types.dark]):
            1
      },
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.zero): -1,
        Modifier(value: modifier_value.plusOne, elements: [element_types.ice]):
            1
      },
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.minusOne): -1,
        Modifier(
          value: modifier_value.zero,
          bonus: bonus_types.heal,
          bonusSize: 1,
        ): 1,
      },
      maxUses: 2,
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: {
        Modifier(
          value: modifier_value.plusOne,
          bonus: bonus_types.heal,
          bonusSize: 1,
        ): 1,
      },
      maxUses: 3,
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: {
        Modifier(
            value: modifier_value.plusOne, condition: condition_types.poison): 1
      },
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: {
        Modifier(value: modifier_value.plusThree): 1,
      },
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: {
        Modifier(
            value: modifier_value.plusOne, condition: condition_types.curse): 1
      },
      maxUses: 2,
    )
  ]);
}

Character generateValrathRedGuard(String name, {int health = 10}) {
  return Character(name: name, health: health, perks: [
    Perk(
      action: perk_action.remove,
      modifierUpdates: {Modifier(value: modifier_value.zero): -4},
    ),
    Perk(
      action: perk_action.remove,
      modifierUpdates: {
        Modifier(value: modifier_value.minusOne): -2,
      },
    ),
    Perk(
      action: perk_action.remove,
      modifierUpdates: {
        Modifier(value: modifier_value.minusTwo): -1,
        Modifier(
          value: modifier_value.plusOne,
        ): 1
      },
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.minusOne): -1,
        Modifier(
          value: modifier_value.plusOne,
        ): 1
      },
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.plusOne): -1,
        Modifier(
          value: modifier_value.plusTwo,
          elements: [element_types.fire],
        ): 1
      },
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.plusOne): -1,
        Modifier(
          value: modifier_value.plusTwo,
          elements: [element_types.ice],
        ): 1
      },
      maxUses: 2,
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: {
        Modifier(
          value: modifier_value.plusOne,
          elements: [element_types.fire, element_types.ice],
        ): 1
      },
      maxUses: 2,
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: {
        Modifier(
          value: modifier_value.plusOne,
          bonus: bonus_types.shield,
        ): 1
      },
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.zero): -1,
        Modifier(
          value: modifier_value.plusOne,
          condition: condition_types.immobilize,
        ): 1,
      },
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: {
        Modifier(value: modifier_value.zero): -1,
        Modifier(
          value: modifier_value.plusOne,
          condition: condition_types.wound,
        ): 1,
      },
    ),
  ]);
}

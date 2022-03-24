import 'modifier_update.model.dart';
import 'perk.model.dart';
import 'constants.dart';
import 'character.model.dart';
import 'modifier.model.dart';

Character generateQuatrylDemolitionist(String name, {int health = 10}) {
  return Character(name: name, health: health, perks: [
    Perk(
      action: perk_action.remove,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.zero),
          change: -4,
        )
      ],
    ),
    Perk(
      action: perk_action.remove,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.minusOne),
          change: -2,
        )
      ],
      maxUses: 2,
    ),
    Perk(
      action: perk_action.remove,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.minusTwo),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.plusOne),
          change: -1,
        ),
      ],
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.zero),
          change: -1,
        ),
        ModifierUpdate(
            modifier: Modifier(
              value: modifier_value.plusTwo,
              condition: condition_types.muddle,
            ),
            change: 1),
      ],
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
            modifier: Modifier(value: modifier_value.minusOne), change: -1),
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.zero,
            condition: condition_types.poison,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.plusTwo),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.plusOne),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.plusTwo,
            elements: [element_types.earth],
          ),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.plusOne),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
              value: modifier_value.plusTwo, elements: [element_types.fire]),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.zero),
          change: 1,
        )
      ],
      maxUses: 2,
      sideEffect: 'All adjacent enemies suffer 1 damage',
    )
  ]);
}

Character generateInoxHatchet(String name, {int health = 10}) {
  return Character(name: name, health: health, perks: [
    Perk(
      action: perk_action.remove,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.minusOne),
          change: -2,
        )
      ],
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
              value: modifier_value.plusTwo, condition: condition_types.muddle),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.plusOne,
            condition: condition_types.poison,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.plusOne,
            condition: condition_types.wound,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.plusOne,
            condition: condition_types.immobilize,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.plusOne,
            effect: effect_types.push,
            effectTargets: 2,
          ),
          change: 1,
        )
      ],
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.zero,
            condition: condition_types.stun,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.plusOne),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.plusOne,
            condition: condition_types.stun,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(
              value: modifier_value.plusTwo, elements: [element_types.air]),
          change: 1,
        ),
      ],
      maxUses: 3,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.plusOne),
          change: -1,
        ),
        ModifierUpdate(
            modifier: Modifier(value: modifier_value.plusThree), change: 1),
      ],
      maxUses: 3,
    ),
  ]);
}

Character generateHumanVoidwarden(String name, {int health = 6}) {
  return Character(name: name, health: health, perks: [
    Perk(
      action: perk_action.remove,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.minusOne),
          change: -2,
        ),
      ],
    ),
    Perk(
      action: perk_action.remove,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.minusTwo),
          change: -1,
        ),
      ],
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
              value: modifier_value.plusOne, elements: [element_types.dark]),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
              value: modifier_value.plusOne, elements: [element_types.ice]),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.minusOne),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.zero,
            bonus: bonus_types.heal,
            bonusSize: 1,
          ),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.plusOne,
            bonus: bonus_types.heal,
            bonusSize: 1,
          ),
          change: 1,
        ),
      ],
      maxUses: 3,
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(
              value: modifier_value.plusOne, condition: condition_types.poison),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.plusThree),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(
              value: modifier_value.plusOne, condition: condition_types.curse),
          change: 1,
        ),
      ],
      maxUses: 2,
    )
  ]);
}

Character generateValrathRedGuard(String name, {int health = 10}) {
  return Character(name: name, health: health, perks: [
    Perk(
      action: perk_action.remove,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.zero),
          change: -4,
        ),
      ],
    ),
    Perk(
      action: perk_action.remove,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.minusOne),
          change: -2,
        ),
      ],
    ),
    Perk(
      action: perk_action.remove,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.minusTwo),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.plusOne,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.minusOne),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.plusOne,
          ),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.plusOne),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.plusTwo,
            elements: [element_types.fire],
          ),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.plusOne),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.plusTwo,
            elements: [element_types.ice],
          ),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.plusOne,
            elements: [element_types.fire, element_types.ice],
          ),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: perk_action.add,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.plusOne,
            bonus: bonus_types.shield,
          ),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.plusOne,
            condition: condition_types.immobilize,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: perk_action.replace,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: modifier_value.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: modifier_value.plusOne,
            condition: condition_types.wound,
          ),
          change: 1,
        ),
      ],
    ),
  ]);
}

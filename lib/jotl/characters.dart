import '../models/modifier_update.model.dart';
import '../models/perk.model.dart';
import '../models/constants.dart';
import '../models/character.model.dart';
import '../models/modifier.model.dart';

Character generateQuatrylDemolitionist(String name, {int health = 10}) {
  return Character(name: name, health: health, perks: [
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.zero),
          change: -4,
        )
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.minusOne),
          change: -2,
        )
      ],
      maxUses: 2,
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.minusTwo),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.plusOne),
          change: -1,
        ),
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.zero),
          change: -1,
        ),
        ModifierUpdate(
            modifier: Modifier(
              value: ModifierValue.plusTwo,
              condition: ConditionTypes.muddle,
            ),
            change: 1),
      ],
      maxUses: 2,
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
            modifier: Modifier(value: ModifierValue.minusOne), change: -1),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.zero,
            condition: ConditionTypes.poison,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.plusTwo),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.plusOne),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusTwo,
            elements: [ElementTypes.earth],
          ),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.plusOne),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusTwo,
            elements: [ElementTypes.fire],
          ),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.zero,
            effect: EffectTypes.damageAdjacent,
            effectDamage: 1,
          ),
          change: 1,
        )
      ],
      maxUses: 2,
      // sideEffect: 'All adjacent enemies suffer 1 damage',
    )
  ]);
}

Character generateInoxHatchet(String name, {int health = 10}) {
  return Character(name: name, health: health, perks: [
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.minusOne),
          change: -2,
        )
      ],
      maxUses: 2,
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusTwo,
            condition: ConditionTypes.muddle,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusOne,
            condition: ConditionTypes.poison,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusOne,
            condition: ConditionTypes.wound,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusOne,
            condition: ConditionTypes.immobilize,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusOne,
            effect: EffectTypes.push,
            effectTargets: 2,
          ),
          change: 1,
        )
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.zero,
            condition: ConditionTypes.stun,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.plusOne),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusOne,
            condition: ConditionTypes.stun,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(
              value: ModifierValue.plusTwo, elements: [ElementTypes.air]),
          change: 1,
        ),
      ],
      maxUses: 3,
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.plusOne),
          change: -1,
        ),
        ModifierUpdate(
            modifier: Modifier(value: ModifierValue.plusThree), change: 1),
      ],
      maxUses: 3,
    ),
  ]);
}

Character generateHumanVoidwarden(String name, {int health = 6}) {
  return Character(name: name, health: health, perks: [
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.minusOne),
          change: -2,
        ),
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.minusTwo),
          change: -1,
        ),
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
              value: ModifierValue.plusOne, elements: [ElementTypes.dark]),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
              value: ModifierValue.plusOne, elements: [ElementTypes.ice]),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.minusOne),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.zero,
            bonus: BonusTypes.heal,
            bonusSize: 1,
          ),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusOne,
            bonus: BonusTypes.heal,
            bonusSize: 1,
          ),
          change: 1,
        ),
      ],
      maxUses: 3,
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(
              value: ModifierValue.plusOne, condition: ConditionTypes.poison),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.plusThree),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(
              value: ModifierValue.plusOne, condition: ConditionTypes.curse),
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
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.zero),
          change: -4,
        ),
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.minusOne),
          change: -2,
        ),
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.minusTwo),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusOne,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.minusOne),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusOne,
          ),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.plusOne),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusTwo,
            elements: [ElementTypes.fire],
          ),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.plusOne),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusTwo,
            elements: [ElementTypes.ice],
          ),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusOne,
            elements: [ElementTypes.fire, ElementTypes.ice],
          ),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusOne,
            bonus: BonusTypes.shield,
          ),
          change: 1,
        ),
      ],
      maxUses: 2,
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusOne,
            condition: ConditionTypes.immobilize,
          ),
          change: 1,
        ),
      ],
    ),
    Perk(
      action: PerkAction.updateModifiers,
      modifierUpdates: [
        ModifierUpdate(
          modifier: Modifier(value: ModifierValue.zero),
          change: -1,
        ),
        ModifierUpdate(
          modifier: Modifier(
            value: ModifierValue.plusOne,
            condition: ConditionTypes.wound,
          ),
          change: 1,
        ),
      ],
    ),
  ]);
}

enum PerkAction { none, updateModifiers }

enum ElementTypes { none, fire, ice, air, earth, light, dark }

enum ModifierValue {
  none,
  doubled,
  plusTwo,
  plusOne,
  plusThree,
  zero,
  minusOne,
  minusTwo
}

enum CharacterClass {
  quatrylDemolitionist,
  inoxHatchet,
  humanVoidwarden,
  valrathRedGuard,
}

// heal isn't technically an effect according to gloomhaven. If making it an effect in order to avoid adding more fields to the Modifier class starts becoming an issue then we change this.
// damage adjacent also ins't technically an effect but I also don't want to make another field for that.
enum EffectTypes { none, push, pull, addTarget, teleport, swap, damageAdjacent }

enum BonusTypes { none, heal, shield, retaliate }

enum ConditionTypes {
  none,
  bane,
  bless,
  brittle,
  disarm,
  curse,
  immobilize,
  injure,
  invisible,
  muddle,
  poison,
  regenerate,
  strengthen,
  stun,
  wound
}

enum perk_action { none, add, remove, replace }

enum element_types { none, fire, ice, air, earth, light, dark }

enum modifier_value {
  none,
  doubled,
  plusTwo,
  plusOne,
  plusThree,
  zero,
  minusOne,
  minusTwo
}

enum characater_classes {
  quatrylDemolitionist,
  inoxHatchet,
  humanVoidwarden,
  valrathRedGuard,
}

// heal isn't technically an effect according to gloomhaven. If making it an effect in order to avoid adding more fields to the Modifier class starts becomming an issue then we change this.
enum effect_types { none, push, pull, addTarget, teleport, swap }

enum bonus_types { none, heal, shield, retaliate }

enum condition_types {
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

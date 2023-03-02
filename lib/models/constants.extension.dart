import 'package:gloomhaven_character_manager/models/constants.dart';

extension ModifierString on ModifierValue {
  String getString() {
    switch (this) {
      case ModifierValue.minusOne:
        return "(-1)";
      case ModifierValue.minusTwo:
        return "(-2)";
      case ModifierValue.zero:
        return "(+0)";
      case ModifierValue.plusOne:
        return "(+1)";
      case ModifierValue.plusTwo:
        return "(+2)";
      case ModifierValue.plusThree:
        return "(+3)";
      case ModifierValue.doubled:
        return "(x2)";
      case ModifierValue.none:
        return "MISS";
      default:
        return "";
    }
  }
}

extension ConditionString on ConditionTypes {
  String getString() {
    switch (this) {
      case ConditionTypes.bane:
        return "BANE";
      case ConditionTypes.bless:
        return "BLESS";
      case ConditionTypes.brittle:
        return "BRITTLE";
      case ConditionTypes.disarm:
        return "DISARM";
      case ConditionTypes.curse:
        return "CURSE";
      case ConditionTypes.immobilize:
        return "IMMOBILIZE";
      case ConditionTypes.injure:
        return "INJURE";
      case ConditionTypes.invisible:
        return "INVISIBLE";
      case ConditionTypes.muddle:
        return "MUDDLE";
      case ConditionTypes.poison:
        return "POISON";
      case ConditionTypes.regenerate:
        return "REGENERATE";
      case ConditionTypes.strengthen:
        return "STRENGTHEN";
      case ConditionTypes.stun:
        return "STUN";
      case ConditionTypes.wound:
        return "WOUND";
      default:
        return "";
    }
  }
}

extension CharacterClassString on CharacterClass {
  String getString() {
    switch (this) {
      case CharacterClass.humanVoidwarden:
        return "Human Voidwarden";
      case CharacterClass.inoxHatchet:
        return "Inox Hatchet";
      case CharacterClass.quatrylDemolitionist:
        return "Quatryl Demolitionist";
      case CharacterClass.valrathRedGuard:
        return "Valrath Red Guard";
      default:
        return "";
    }
  }
}

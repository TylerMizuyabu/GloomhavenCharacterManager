import 'package:gloomhaven_character_manager/models/constants.dart';

extension ModifierString on modifier_value {
  String getString() {
    switch (this) {
      case modifier_value.minusOne:
        return "(-1)";
      case modifier_value.minusTwo:
        return "(-2)";
      case modifier_value.zero:
        return "(+0)";
      case modifier_value.plusOne:
        return "(+1)";
      case modifier_value.plusTwo:
        return "(+2)";
      case modifier_value.plusThree:
        return "(+3)";
      case modifier_value.doubled:
        return "(x2)";
      case modifier_value.none:
        return "MISS";
      default:
        return "";
    }
  }
}

extension ConditionString on condition_types {
  String getString() {
    switch (this) {
      case condition_types.bane:
        return "BANE";
      case condition_types.bless:
        return "BLESS";
      case condition_types.brittle:
        return "BRITTLE";
      case condition_types.disarm:
        return "DISARM";
      case condition_types.curse:
        return "CURSE";
      case condition_types.immobilize:
        return "IMMOBILIZE";
      case condition_types.injure:
        return "INJURE";
      case condition_types.invisible:
        return "INVISIBLE";
      case condition_types.muddle:
        return "MUDDLE";
      case condition_types.poison:
        return "POISON";
      case condition_types.regenerate:
        return "REGENERATE";
      case condition_types.strengthen:
        return "STRENGTHEN";
      case condition_types.stun:
        return "STUN";
      case condition_types.wound:
        return "WOUND";
      default:
        return "";
    }
  }
}

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
      case modifier_value.doubled:
        return "(x2)";
      case modifier_value.none:
        return "MISS";
      default:
        return "";
    }
  }
}

extension ConditionString on conditions {
  String getString() {
    switch (this) {
      case conditions.bane:
        return "BANE";
      case conditions.bless:
        return "BLESS";
      case conditions.brittle:
        return "BRITTLE";
      case conditions.disarm:
        return "DISARM";
      case conditions.curse:
        return "CURSE";
      case conditions.immobilize:
        return "IMMOBILIZE";
      case conditions.injure:
        return "INJURE";
      case conditions.invisible:
        return "INVISIBLE";
      case conditions.muddle:
        return "MUDDLE";
      case conditions.poison:
        return "POISON";
      case conditions.regenerate:
        return "REGENERATE";
      case conditions.strengthen:
        return "STRENGTHEN";
      case conditions.stun:
        return "STUN";
      case conditions.wound:
        return "WOUND";
      default:
        return "";
    }
  }
}

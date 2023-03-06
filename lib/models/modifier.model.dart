import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gloomhaven_utility/models/constants.dart';
import 'package:gloomhaven_utility/models/perk.model.dart';

part 'modifier.model.freezed.dart';
part 'modifier.model.g.dart';

@freezed
class Modifier with _$Modifier {
  factory Modifier({
    required ModifierValue value,
    @Default([]) List<ElementTypes> elements,
    @Default(false) bool shuffle,
    @Default(false) bool rolling,
    @Default(ConditionTypes.none) ConditionTypes condition,
    @Default(EffectTypes.none) EffectTypes effect,
    @Default(1) int effectTargets,
    @Default(0) int effectDamage,
    @Default(BonusTypes.none) BonusTypes bonus,
    @Default(1) int bonusSize,
  }) = _Modifier;

  factory Modifier.fromJson(Map<String, dynamic> json) => _$ModifierFromJson(json);
}

List<Modifier> generateBaseModifierDeck() {
  var deck = <Modifier>[
    Modifier(value: ModifierValue.none, shuffle: true),
    Modifier(value: ModifierValue.minusTwo),
    Modifier(value: ModifierValue.minusOne),
    Modifier(value: ModifierValue.minusOne),
    Modifier(value: ModifierValue.minusOne),
    Modifier(value: ModifierValue.minusOne),
    Modifier(value: ModifierValue.minusOne),
    Modifier(value: ModifierValue.zero),
    Modifier(value: ModifierValue.zero),
    Modifier(value: ModifierValue.zero),
    Modifier(value: ModifierValue.zero),
    Modifier(value: ModifierValue.zero),
    Modifier(value: ModifierValue.zero),
    Modifier(value: ModifierValue.plusOne),
    Modifier(value: ModifierValue.plusOne),
    Modifier(value: ModifierValue.plusOne),
    Modifier(value: ModifierValue.plusOne),
    Modifier(value: ModifierValue.plusOne),
    Modifier(value: ModifierValue.plusTwo),
    Modifier(value: ModifierValue.doubled, shuffle: true),
  ];
  deck.shuffle(Random(DateTime.now().millisecondsSinceEpoch));
  return deck;
}

extension EditModifiersList on List<Modifier> {
  List<Modifier> removeModifiers(Iterable<Modifier> toBeRemoved) {
    for (final mod in toBeRemoved) {
      final index = indexOf(mod);
      if (index != -1) {
        removeAt(index);
      }
    }
    return this;
  }

  List<Modifier> addModifiers(Iterable<Modifier> toBeAdded) {
    addAll(toBeAdded);
    return this;
  }

  List<Modifier> applyPerks(Iterable<Perk> perks) {
    List<Modifier> updatedList = this;
    for (final perk in perks) {
      if (perk.action == PerkAction.updateModifiers) {
        updatedList = updatedList.addModifiers(
          perk.modifierUpdates.where((element) => element.change > 0).map((element) => element.modifier),
        );
        updatedList = updatedList.removeModifiers(
          perk.modifierUpdates.where((element) => element.change < 0).map((element) => element.modifier),
        );
      }
    }
    return updatedList;
  }
}

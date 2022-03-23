import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gloomhaven_character_manager/models/constants.dart';
import 'package:gloomhaven_character_manager/models/constants.extension.dart';

part 'modifier.model.freezed.dart';

@freezed
class Modifier with _$Modifier {
  factory Modifier(
      {required modifier_value value,
      @Default(element_type.none) element_type element,
      @Default(false) bool shuffle,
      @Default(false) bool rolling,
      @Default(conditions.none) conditions condition,
      @Default(effects.none) effects effect}) = _Modifier;
}

List<Modifier> generateBaseModifierDeck() {
  var deck = <Modifier>[
    Modifier(value: modifier_value.none, shuffle: true),
    Modifier(value: modifier_value.minusTwo),
    Modifier(value: modifier_value.minusOne),
    Modifier(value: modifier_value.minusOne),
    Modifier(value: modifier_value.minusOne),
    Modifier(value: modifier_value.minusOne),
    Modifier(value: modifier_value.minusOne),
    Modifier(value: modifier_value.zero),
    Modifier(value: modifier_value.zero),
    Modifier(value: modifier_value.zero),
    Modifier(value: modifier_value.zero),
    Modifier(value: modifier_value.zero),
    Modifier(value: modifier_value.zero),
    Modifier(value: modifier_value.plusOne),
    Modifier(value: modifier_value.plusOne),
    Modifier(value: modifier_value.plusOne),
    Modifier(value: modifier_value.plusOne),
    Modifier(value: modifier_value.plusOne),
    Modifier(value: modifier_value.plusTwo),
    Modifier(value: modifier_value.doubled, shuffle: true),
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
}

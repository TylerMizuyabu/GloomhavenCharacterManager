import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gloomhaven_utility/models/constants.dart';
import 'package:gloomhaven_utility/models/perk.model.dart';
import 'package:gloomhaven_utility/models/item.model.dart';

import 'modifier.model.dart';

part 'character.model.freezed.dart';
part 'character.model.g.dart';

@freezed
class Character with _$Character {
  const Character._();

  factory Character({
    @Default('') String name,
    @Default(0) int health,
    @Default(CharacterClass.humanVoidwarden) CharacterClass characterClass,
    @Default(0) int? exp,
    @Default(0) int? gold,
    @Default([]) List<Item> items,
    @Default([]) List<Perk> perks,
    @Default([]) List<ConditionTypes> conditions,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);

  // @override
  // Map<String, dynamic> toJson() => this.toJson();

  List<Modifier> get modifierDeck {
    return generateBaseModifierDeck().applyPerks(perks);
  }
}

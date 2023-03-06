import 'package:gloomhaven_utility/models/constants.dart';

import 'package:gloomhaven_utility/models/character.model.dart';
import 'package:gloomhaven_utility/models/item.model.dart';
import 'package:gloomhaven_utility/models/perk.model.dart';

class CharacterBuilder {
  Character _character = Character();

  void withName(String name) {
    _character = _character.copyWith(name: name);
  }

  void withClass(CharacterClass characterClass) {
    _character = _character.copyWith(characterClass: characterClass);
  }

  void withExp(int exp) {
    _character = _character.copyWith(exp: exp);
  }

  void withGold(int gold) {
    _character = _character.copyWith(gold: gold);
  }

  void withItems(List<Item> items) {
    _character = _character.copyWith(items: items);
  }

  void withPerks(List<Perk> perks) {
    _character = _character.copyWith(perks: perks);
  }

  Character build() {
    final character = _character;
    // Todo, should calculate health here based on exp -> level -> health based on character class
    _character = Character();
    return character;
  }
}

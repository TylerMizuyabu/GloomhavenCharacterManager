import 'package:gloomhaven_utility/models/character.model.dart';

abstract class CharacterService {
  Stream<List<Character>> characters();

  createCharacter(Character character);
}

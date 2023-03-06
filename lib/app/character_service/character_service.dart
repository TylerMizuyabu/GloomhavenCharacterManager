import 'package:gloomhaven_character_manager/models/character.model.dart';

abstract class CharacterService {
  Stream<List<Character>> characters();

  createCharacter(Character character);
}

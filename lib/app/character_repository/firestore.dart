import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gloomhaven_utility/app/character_repository/character_repository.dart';
import 'package:gloomhaven_utility/app/user_service/user_service.dart';
import 'package:gloomhaven_utility/injection.dart';
import 'package:gloomhaven_utility/models/character.model.dart';
import 'package:rxdart/streams.dart';

class FirestoreCharacterService implements CharacterService {
  late final ValueStream<String> _userId;

  FirestoreCharacterService() {
    final userService = getIt.get<UserService>();
    _userId = userService.userId().shareValue();
  }

  @override
  Stream<List<Character>> characters() async* {
    await for (final _ in _userId) {
      Set<Character> characters = {};
      final query = (await _characterCollection);
      await for (final snapshot in query.snapshots()) {
        characters.add(snapshot.docs.single.data());
        final list = characters.toList();
        list.sort((a, b) {
          return a.name.toLowerCase().compareTo(b.name.toLowerCase());
        });
        yield list;
      }
    }
  }

  @override
  createCharacter(Character character) async {
    (await _characterCollection).add(character);
  }

  Future<CollectionReference<Character>> get _characterCollection async {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(_userId.hasValue ? _userId.value : await _userId.first)
        .collection('characters')
        .withConverter<Character>(fromFirestore: (DocumentSnapshot<Map<String, dynamic>> snapshot, SnapshotOptions? _) {
      return Character.fromJson(snapshot.data()!);
    }, toFirestore: (Character character, SetOptions? _) {
      return character.toJson();
    });
  }
}

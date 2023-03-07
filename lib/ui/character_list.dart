import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gloomhaven_utility/app/character_repository/character_repository.dart';
import 'package:gloomhaven_utility/app/user_service/user_service.dart';
import 'package:gloomhaven_utility/injection.dart';
import 'package:gloomhaven_utility/models/character.model.dart';
import 'package:gloomhaven_utility/ui/character_creator/character_creator.dart';

final userCollectionRef = FirebaseFirestore.instance.collection('users');

class CharacterList extends StatelessWidget {
  const CharacterList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CharacterService characterService = getIt.get<CharacterService>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Characters"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout_rounded),
            onPressed: () {
              final UserService userService = getIt.get<UserService>();
              userService.logout(context);
            },
          )
        ],
      ),
      body: StreamBuilder<List<Character>>(
        stream: characterService.characters(),
        builder: ((context, snapshot) {
          List<Character> characters = [];
          if (snapshot.hasData) {
            characters = snapshot.requireData;
          }
          return ListView(
            children: characters.map((Character character) => Text(character.name)).toList(),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CharacterCreator()));
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

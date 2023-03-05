import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:gloomhaven_character_manager/ui/character_creator.dart';

final userCollectionRef = FirebaseFirestore.instance.collection('users');

class CharacterList extends StatelessWidget {
  final String userId;

  const CharacterList({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Characters"),
      ),
      body: FirestoreListView<Map<String, dynamic>>(
        query: generateFirestoreQuery(),
        itemBuilder: (context, snapshot) {
          Map<String, dynamic> character = snapshot.data();

          return Text('Character: ${character['name']}');
        },
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

  Query<Map<String, dynamic>> generateFirestoreQuery() {
    return userCollectionRef.doc(userId).collection('characters').orderBy('name');
  }
}

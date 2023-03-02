import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';

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
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Query<Map<String, dynamic>> generateFirestoreQuery() {
    return userCollectionRef
        .doc(userId)
        .collection('characters')
        .orderBy('name');
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';

final charactersQuery =
    FirebaseFirestore.instance.collection('characters').orderBy('name');

class CharacterList extends StatelessWidget {
  const CharacterList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirestoreListView<Map<String, dynamic>>(
      query: charactersQuery,
      itemBuilder: (context, snapshot) {
        Map<String, dynamic> user = snapshot.data();

        return Text('User name is ${user['name']}');
      },
    );
  }
}

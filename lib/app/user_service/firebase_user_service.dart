import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gloomhaven_utility/app/user_service/user_service.dart';

class FirebaseUserService implements UserService {
  @override
  Stream<String> userId() => FirebaseAuth.instance.authStateChanges().where((user) => user != null).map((user) => user!.uid);

  @override
  logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).popUntil((route) => route.isFirst);
  }
}

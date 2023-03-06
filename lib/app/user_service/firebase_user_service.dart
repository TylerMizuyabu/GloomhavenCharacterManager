import 'package:firebase_auth/firebase_auth.dart';
import 'package:gloomhaven_character_manager/app/user_service/user_service.dart';

class FirebaseUserService implements UserService {
  @override
  Stream<String> userId() => FirebaseAuth.instance.authStateChanges().where((user) => user != null).map((user) => user!.uid);
}

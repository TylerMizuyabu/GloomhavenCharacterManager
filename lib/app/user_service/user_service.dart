import 'package:flutter/material.dart';

abstract class UserService {
  Stream<String> userId();
  logout(BuildContext context);
}

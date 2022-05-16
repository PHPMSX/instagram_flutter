import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void signUpUser(
      {required String email,
      required String password,
      required String username,
      required String bio,
      required Uint8List file}) {}
}

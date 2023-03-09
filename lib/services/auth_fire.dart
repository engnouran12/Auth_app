//auth for firebase
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class User {
  final String? uid;

  User({required this.uid});
}

//convert uid of fire to uid goog
class AuthBase {
  User _userFromFirebase(User? user) {
    return User(uid: user!.uid);
  }

  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      final authResult = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      User? user1 = authResult.user! as User?;
      return _userFromFirebase(user1!);
    } catch (error) {
      print(error.toString());
    }
  }

  Future loginWithEmailAndPassword(String email, String password) async {
    try {
      final authResult = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      User? user = authResult.user! as User?;
      return _userFromFirebase(user!);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    
  }
}

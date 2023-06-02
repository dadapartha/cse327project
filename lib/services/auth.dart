import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:group_project/models/users.dart';


class AuthService {

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  // // create user obj based on firebase user
  // Users? get _userFromFirebaseUser(User user) {
  //   if(user != null) {
  //     return Users(uid: user.uid);
  //   } else {
  //     return null;
  //   }
  // }

  // auth change user stream
  // Stream<Users> get user {
  //   return _auth.authStateChanges().map(_userFromFirebaseUser);
  //   //.map((User user) => _userFromFirebaseUser(user));
  //
  // }

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  // // sign in anon
  // Future signInAnon() async {
  //   try {
  //     UserCredential result = await _auth.signInAnonymously();
  //     User user = result.user;
  //     return _userFromFirebaseUser(user);
  //   } catch (e) {
  //     print(e.toString());
  //     return null;
  //   }


  // sign in with email and password
  Future signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password);
  }

  // register with email and password
  Future createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password);
  }

  // sign out
  Future signOut() async {
    await _firebaseAuth.signOut();
  }

}
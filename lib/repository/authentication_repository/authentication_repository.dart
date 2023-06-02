// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:group_project/home.dart';
// import 'package:group_project/login.dart';
// import 'package:group_project/repository/authentication_repository/exceptions/signIn_email_password_failure.dart';
// import 'package:group_project/welcome.dart';
//
// class AuthentcationRepository extends GetxController {
//   static AuthentcationRepository get instance => Get.find();
//
//   final _auth = FirebaseAuth.instance;
//   late final Rx<User?> firebaseUser;
//
//   @override
//   void onReady() {
//    firebaseUser = Rx<User?>(_auth.currentUser);
//    firebaseUser.bindStream(_auth.userChanges());
//    ever(firebaseUser, _setInitialScreen);
//   }
//
//   _setInitialScreen(User? user) {
//     user == null ? Get.offAll(() => Login()) : Get.offAll(() => Home());
//   }
//
//   Future<void> createUserWithEmailAndPassword(String email, String password) async {
//     try{
//       await _auth.createUserWithEmailAndPassword(email: email, password: password);
//       firebaseUser.value != null ? Get.offAll(() => Home()) : Get.to(() => Login());
//     } on FirebaseAuthException catch(e){
//       final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
//       print('FIREBASE AUTH EXCEPTION - ${ex.message}');
//       throw ex;
//     } catch (_) {
//       const ex = SignUpWithEmailAndPasswordFailure();
//       print('EXCEPTION - ${ex.message}');
//       throw ex;
//     }
//   }
//
//   Future<void> loginUserWithEmailAndPassword(String email, String password) async {
//     try{
//       await _auth.signInWithEmailAndPassword(email: email, password: password);
//       firebaseUser.value != null ? Get.offAll(() => Home()) : Get.to(() => Login());
//     } on FirebaseAuthException catch(e){
//       final ex = SignInWithEmailAndPasswordFailure.code(e.code);
//       print('FIREBASE AUTH EXCEPTION - ${ex.message}');
//       throw ex;
//     } catch (_) {
//       const ex = SignInWithEmailAndPasswordFailure();
//       print('EXCEPTION - ${ex.message}');
//       throw ex;
//     }
//   }
//
//   Future<void> logout() async => await _auth.signOut();
// }
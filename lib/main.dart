//import 'package:firebase_core/firebase_core.dart';
//import 'package:group_project/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:group_project/userProfile.dart';
import 'package:group_project/welcome.dart';
import 'package:group_project/login.dart';
import 'package:group_project/signUp.dart';
import 'package:group_project/accepted.dart';
import 'package:group_project/home.dart';
import 'package:group_project/navBar.dart';
import 'package:group_project/confirmReqst.dart';
import 'package:group_project/community.dart';
import 'package:group_project/userProfile.dart';

Future<void> main() async {

  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  runApp(MaterialApp(
    initialRoute: '/welcome',
    routes: {
      '/welcome': (context) => Welcome(),
      '/login': (context) => Login(),
      '/signUp': (context) => SignUp(),
      '/accept': (context) => Accepted(),
      '/home': (context) => Home(),
      '/profile': (context) => UserProfile(),
      '/community': (context) => Community(),
      '/navBar': (context) => NavBar(),
      '/confirmReqst': (context) => confirmReqst(),
      },
    ),
  );
}
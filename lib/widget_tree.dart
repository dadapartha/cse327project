import 'package:group_project/home.dart';
import 'package:group_project/services/auth.dart';
import 'package:group_project/navBar.dart';
import 'package:group_project/login.dart';
import 'package:flutter/material.dart';
import 'package:group_project/home.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().authStateChanges,
      builder: (context, snapshot){
        if (snapshot.hasData) {
          return Home();
        } else {
          return Login();
        }
      },
    );
  }
}

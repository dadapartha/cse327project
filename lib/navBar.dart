import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:group_project/services/auth.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Partha Sarathi'),
              accountEmail: Text('partha@gmail.com'),
              currentAccountPicture: CircleAvatar(child: ClipOval()),
            decoration: BoxDecoration(color: Colors.greenAccent[400]),
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Sitters',
            style: TextStyle(color: Colors.grey[600], fontFamily: 'Calibri')),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.groups_2),
            title: Text('Community',
                style: TextStyle(color: Colors.grey[600], fontFamily: 'Calibri')),
            onTap: () {
              Navigator.pushNamed(context, '/community');
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Profile',
                style: TextStyle(color: Colors.grey[600], fontFamily: 'Calibri')),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app_outlined),
            title: Text('Sign Out',
                style: TextStyle(color: Colors.grey[600], fontFamily: 'Calibri')),
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:group_project/navBar.dart';

class UserProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile', style: TextStyle(fontFamily: 'Calibri')),
        backgroundColor: Colors.greenAccent[400],
      ),
      drawer: NavBar(),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: ClipOval(
                          child: Image.asset('assets/profile1.jpg',
                              height: 150, width: 150)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text('Partha Sarathi',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontFamily: 'Calibri',
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Text('Email:',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontFamily: 'Calibri',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text('partha@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontFamily: 'Calibri',
                      fontSize: 30,
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Text('Contact No:',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontFamily: 'Calibri',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text('01718888888',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontFamily: 'Calibri',
                      fontSize: 30,
                    ),
                  ),

                ),
              ]
            ),
          ],
        ),
      ),

    );
  }
}


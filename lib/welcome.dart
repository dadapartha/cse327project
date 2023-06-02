import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Image.asset('assets/logo.png'),
          ),
          Text('a complete pet solution app',
            style: TextStyle(
              fontFamily: 'Calibri',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                iconSize: 80,
                icon: Icon(Icons.arrow_circle_right_rounded,
                )),
          ),
        ],
      ),
      backgroundColor: Colors.greenAccent[400],
    );
  }
}
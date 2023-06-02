import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Accepted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: IconButton(
                  onPressed: () {},
                  iconSize: 150,
                  color: Colors.white,
                  icon: Icon(Icons.check_circle_rounded,
                  )),
            ),
            Text('The sitter has accepted your request!',
              style: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text('You will soon receive a call regarding pick-up time.',
              style: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Column(
                children: [
                  ElevatedButton.icon(onPressed: () {},
                      icon: Icon(Icons.call_rounded, color: Colors.greenAccent[400]),
                      label: Text('CALL NOW', style: TextStyle(color: Colors.greenAccent[400])),
                  style: ElevatedButton.styleFrom(primary: Colors.white)
                  ),
                  ElevatedButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                      icon: Icon(Icons.arrow_back, color: Colors.greenAccent[400]),
                      label: Text(' GO BACK  ', style: TextStyle(color: Colors.greenAccent[400])),
                      style: ElevatedButton.styleFrom(primary: Colors.white)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.greenAccent[400],
    );
  }
}

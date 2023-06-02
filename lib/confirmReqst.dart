import 'package:flutter/material.dart';


class confirmReqst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent[400],
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text('PLEASE ENTER YOUR',
                style:TextStyle(
                  fontSize: 30,
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Text('DETAILS',
                style:TextStyle(
                  fontSize: 40,
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.location_on),
                  labelText: 'Enter Your Full Address',
                  labelStyle: TextStyle(
                    fontFamily: 'Calibri',
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.call_rounded),
                  labelText: 'Enter Your Contact Number',
                  labelStyle: TextStyle(
                    fontFamily: 'Calibri',
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.timer),
                  labelText: 'How Long Do You Need The Service For?',
                  labelStyle: TextStyle(
                    fontFamily: 'Calibri',
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 70),
                  prefixIcon: Icon(Icons.pets_rounded),
                  labelText: 'Detailed Pet Description',
                  labelStyle: TextStyle(
                    fontFamily: 'Calibri',
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, '/accept');
              },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(350, 60),
                  backgroundColor: Colors.greenAccent[400],
                  foregroundColor: Colors.black54,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: Text('Send Request',
                  style: TextStyle(
                    fontFamily: 'Calibri',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom))
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
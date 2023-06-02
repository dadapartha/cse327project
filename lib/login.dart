import 'package:flutter/material.dart';

class Login extends StatelessWidget {
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
              child: Text('WELCOME BACK !',
                style:TextStyle(
                  fontSize: 40,
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image.asset('assets/Login.png', height: 250, width: 250),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_2_outlined),
                  labelText: 'Enter Your Email',
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
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.key),
                  labelText: 'Enter Your Password',
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
                Navigator.pushNamed(context, '/home');
              },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(350, 60),
                  backgroundColor: Colors.greenAccent[400],
                  foregroundColor: Colors.black54,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: Text('Sign In',
                  style: TextStyle(
                    fontFamily: 'Calibri',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Calibri',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(onPressed: () {
                  Navigator.pushNamed(context, '/signUp');
                },
                  child: Text('Sign Up',
                    style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent[400]
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom))
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:group_project/services/auth.dart';
//
// class Login extends StatefulWidget {
//   @override
//   State<Login> createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//   String? errorMessage = '';
//   bool isLogin = true;
//
//   final TextEditingController _controllerEmail = TextEditingController();
//   final TextEditingController _controllerPassword = TextEditingController();
//
//   Future<void> signInWIthEMailAndPassword() async {
//     try {
//       await AuthService().signInWithEmailAndPassword(
//           email: _controllerEmail.text,
//           password: _controllerPassword.text);
//     } on FirebaseAuthException catch (e) {
//       setState(() {
//         errorMessage = e.message;
//       });
//     }
//   }
//
//   Future<void> createUserWithEmailAndPassword() async {
//     try {
//       await AuthService().createUserWithEmailAndPassword(
//           email: _controllerEmail.text,
//           password: _controllerPassword.text);
//     } on FirebaseAuthException catch (e) {
//       setState(() {
//         errorMessage = e.message;
//       });
//     }
//   }
//
//   Widget _errorMessage() {
//     return Text(errorMessage == '' ? '' : 'Humm ? $errorMessage');
//   }
//
//   Widget _title() {
//     return const Text('Firebase Auth');
//   }
//
//   Widget _entryField(
//       String title,
//       TextEditingController controller,
//       ) {
//     return TextField(
//       controller: controller,
//       decoration: InputDecoration(
//         labelText: title,
//       ),
//     );
//   }
//
//   Widget _submitButton() {
//     return ElevatedButton(
//       onPressed:
//       isLogin ? signInWIthEMailAndPassword : createUserWithEmailAndPassword,
//       child: Text(isLogin ? 'Login' : 'Register'),
//     );
//   }
//
//   Widget _loginOrRegisterButton() {
//     return TextButton(
//       onPressed: (){
//         setState(() {
//           isLogin = !isLogin;
//         });
//       },
//       child: Text(isLogin ? 'Register instead' : 'Login instead'),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           title: _title(),
//         ),
//         body: Container(
//           height: double.infinity,
//           width: double.infinity,
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               _entryField('email', _controllerEmail),
//               _entryField('password', _controllerPassword),
//               _errorMessage(),
//               _submitButton(),
//               _loginOrRegisterButton(),
//             ],
//           ),
//         )
//     );
//   }
// }
//
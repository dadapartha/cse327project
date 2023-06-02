//
// class SignInWithEmailAndPasswordFailure {
//   final String message;
//
//   const SignInWithEmailAndPasswordFailure([this.message = "An unknown error occured"]);
//
//   factory SignInWithEmailAndPasswordFailure.code(String code) {
//     switch(code) {
//       case 'weak-password':
//         return const SignInWithEmailAndPasswordFailure('Please enter stronger password.');
//       case 'invalid-email':
//         return const SignInWithEmailAndPasswordFailure('Email is not valid.');
//       case 'email-already-in-use':
//         return const SignInWithEmailAndPasswordFailure('Account already exists for that email.');
//       case 'opeartion-not-allowed':
//         return const SignInWithEmailAndPasswordFailure('Operation is not allowed.');
//       case 'user-disabled':
//         return const SignInWithEmailAndPasswordFailure('This user is now disabled.');
//       default:
//         return const SignInWithEmailAndPasswordFailure();
//     }
//   }
// }
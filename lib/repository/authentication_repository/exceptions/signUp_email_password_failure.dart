//
// class SignUpWithEmailAndPasswordFailure {
//   final String message;
//
//   const SignUpWithEmailAndPasswordFailure([this.message = "An unknown error occured"]);
//
//   factory SignUpWithEmailAndPasswordFailure.code(String code) {
//     switch(code) {
//       case 'weak-password':
//         return const SignUpWithEmailAndPasswordFailure('Please enter stronger password.');
//       case 'invalid-email':
//         return const SignUpWithEmailAndPasswordFailure('Email is not valid.');
//       case 'email-already-in-use':
//         return const SignUpWithEmailAndPasswordFailure('Account already exists for that email.');
//       case 'opeartion-not-allowed':
//         return const SignUpWithEmailAndPasswordFailure('Operation is not allowed.');
//       case 'user-disabled':
//         return const SignUpWithEmailAndPasswordFailure('This user is now disabled.');
//       default:
//         return const SignUpWithEmailAndPasswordFailure();
//     }
//   }
// }
// import 'package:flutter/material.dart';

// class SignUpScreen extends StatefulWidget {
//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _emailController,
//               decoration: InputDecoration(labelText: 'Email'),
//             ),
//             TextField(
//               controller: _passwordController,
//               decoration: InputDecoration(labelText: 'Password'),
//               obscureText: true,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _signUp,
//               child: Text('Sign Up'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future<void> _signUp() async {
//     try {
//       UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
//         email: _emailController.text,
//         password: _passwordController.text,
//       );

//       // Send email verification
//       User? user = userCredential.user;
//       if (user != null && !user.emailVerified) {
//         await user.sendEmailVerification();
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: Text('Verification email sent to ${user.email}'),
//         ));
//       }
//     } on FirebaseAuthException catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text('Failed to sign up: ${e.message}'),
//       ));
//     }
//   }
// }

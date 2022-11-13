// import 'package:flutter/material.dart';
// import 'package:learn_freezed_1/models/authentication/login_model.dart';

// import '../../logic/bloc/authentication/auth_bloc.dart';
// import '../locator.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final emailController = TextEditingController();
//   final passController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text("Login Page"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             const Padding(
//               padding: EdgeInsets.only(top: 60.0),
//               child: Center(
//                 child: SizedBox(
//                   width: 200,
//                   height: 150,
//                   /*decoration: BoxDecoration(
//                         color: Colors.red,
//                         borderRadius: BorderRadius.circular(50.0)),*/
//                   child: FlutterLogo(),
//                 ),
//               ),
//             ),
//             Padding(
//               //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: TextField(
//                 controller: emailController,
//                 decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Email',
//                     hintText: 'Enter valid email id as abc@gmail.com'),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 15.0, right: 15.0, top: 15, bottom: 0),
//               //padding: EdgeInsets.symmetric(horizontal: 15),
//               child: TextField(
//                 controller: passController,
//                 obscureText: true,
//                 decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Password',
//                     hintText: 'Enter secure password'),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 await AuthBloc().signOut();
//                 //TODO FORGOT PASSWORD SCREEN GOES HERE
//               },
//               child: const Text(
//                 'Forgot Password',
//               ),
//             ),
//             Container(
//               height: 50,
//               width: 250,
//               decoration: BoxDecoration(
//                   color: Colors.blue, borderRadius: BorderRadius.circular(20)),
//               child: ElevatedButton(
//                 onPressed: () {
//                   final login = LoginRequest(
//                     email: emailController.text,
//                     password: passController.text,
//                   );
//                   AuthBloc().add(AuthEvent.login(login));
//                 },
//                 child: const Text(
//                   'Login',
//                   style: TextStyle(color: Colors.white, fontSize: 25),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 130),
//             const Text('New User? Create Account')
//           ],
//         ),
//       ),
//     );
//   }
// }

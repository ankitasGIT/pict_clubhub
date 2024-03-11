import 'dart:convert';
import "config.dart";
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_in/color_utilis.dart';
import 'package:sign_up_in/reusable_widget.dart';
import 'package:sign_up_in/wel_screen.dart';
import 'package:http/http.dart' as http;
import 'home1.dart';
import 'main.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

String globalUsername = '';
String globalEmail = '';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  bool _isNotValid = false;
  bool isLogin = false;

  void registerUser() async{
    if(_userNameTextController.text.isNotEmpty && _emailTextController.text.isNotEmpty && _passwordTextController.text.isNotEmpty)
      {
        globalUsername = _userNameTextController.text;
        globalEmail = _emailTextController.text;
          var regBody = {
            "username": _userNameTextController.text,
            "email" : _emailTextController.text,
            "password" : _passwordTextController.text
          };

          var response = await http.post(Uri.parse(registration),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(regBody)
          );

          var jsonResponse = jsonDecode(response.body);

          // print(jsonResponse['status']);

          if(jsonResponse['status'])
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
            }else
              {
                  print("Something went wrong");
              }
      }else
        {
          setState(() {
            _isNotValid = true;
          });
        }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                hexStringToColor("4169E1"),
                hexStringToColor("1E90FF"),
                hexStringToColor("4169E1")
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),

                TextField(controller: _userNameTextController,
                  obscureText: false,
                  enableSuggestions: true,
                  autocorrect: true,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white.withOpacity(0.9)),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person_outline, color: Colors.white70,
                      ),
                      labelText: "Enter UserName",
                      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
                      //new
                      errorStyle: TextStyle(color: Colors.white),
                      errorText: _isNotValid ? "Enter proper information " : null,
                      filled: true,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      fillColor: Colors.white.withOpacity(0.3),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(width: 0,style: BorderStyle.none))

                  ),
                  keyboardType: TextInputType.name,


                ),
                    const SizedBox(
                      height: 20,
                    ),

                    TextField(controller: _emailTextController,
                      obscureText: false,
                      enableSuggestions: true,
                      autocorrect: true,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white.withOpacity(0.9)),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail, color: Colors.white70,
                          ),
                          labelText: "admin@gmail.com",
                          labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),

                          //new
                          errorStyle: TextStyle(color: Colors.white),
                          errorText: _isNotValid ? "Enter proper information " : null,
                          filled: true,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          fillColor: Colors.white.withOpacity(0.3),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(width: 0,style: BorderStyle.none))

                      ),
                      keyboardType: TextInputType.emailAddress,


                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(controller: _passwordTextController,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white.withOpacity(0.9)),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outlined, color: Colors.white70,
                          ),
                          labelText: "Enter Password",
                          labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
                          //new
                          errorStyle: TextStyle(color: Colors.white),
                          errorText: _isNotValid ? "Password must be atleast 6 digits " : null,
                          filled: true,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          fillColor: Colors.white.withOpacity(0.3),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(width: 0,style: BorderStyle.none))

                      ),
                      keyboardType: TextInputType.visiblePassword



                    ),
                    const SizedBox(
                      height: 20,
                    ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),

                  child: ElevatedButton(
                    onPressed: () {
                      // onTap();
                      registerUser();
                      //code
                    },
                    child: Text(
                      isLogin ? 'LOG IN ' : 'SIGN UP',
                      style: const TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.black26;
                          }
                          return Colors.white;
                        }),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                  ),
                )
                  // SignInUpButton(context, false, (registerUser) {
                  //   FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailTextController.text,
                  //       password: _passwordTextController.text)
                  //       .then((value) {
                  //         print("Successfully Signed Up");
                  //         Navigator.push(context, MaterialPageRoute(
                  //         builder: (context) => WelcomeScreen()
                  //
                  //     ));
                  //   }).onError((error, stackTrace) {
                  //         print("Error ${error.toString()}");
                  //   });
                  //
                  // }
                  //
                  //   )


                  ],
                ),
              ))),
    );
  }

}








// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:sign_up_in/color_utilis.dart';
// import 'package:sign_up_in/reusable_widget.dart';
// import 'package:sign_up_in/wel_screen.dart';
//
// import 'home1.dart';
// import 'main.dart';
//
//
// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({Key? key}) : super(key: key);
//
//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }
//
// class _SignUpScreenState extends State<SignUpScreen> {
//   TextEditingController _passwordTextController = TextEditingController();
//   TextEditingController _emailTextController = TextEditingController();
//   TextEditingController _userNameTextController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: const Text(
//           "Sign Up",
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           decoration: BoxDecoration(
//               gradient: LinearGradient(colors: [
//                 hexStringToColor("4169E1"),
//                 hexStringToColor("1E90FF"),
//                 hexStringToColor("4169E1")
//               ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
//           child: SingleChildScrollView(
//               child: Padding(
//                 padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
//                 child: Column(
//                   children: <Widget>[
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     reusableTextField("Enter UserName", Icons.person_outline, true,
//                         _userNameTextController),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     reusableTextField("Enter Email Id", Icons.person_outline, true,
//                         _emailTextController),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     reusableTextField("Enter Password", Icons.lock_outlined, true,
//                         _passwordTextController),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     SignInUpButton(context, false, () {
//                       FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailTextController.text,
//                           password: _passwordTextController.text)
//                           .then((value) {
//                         print("Successfully Signed Up");
//                         Navigator.push(context, MaterialPageRoute(
//                             builder: (context) => WelcomeScreen()
//                         ));
//                       }).onError((error, stackTrace) {
//                         print("Error ${error.toString()}");
//                       });
//
//                     })
//                   ],
//                 ),
//               ))),
//     );
//   }
// }
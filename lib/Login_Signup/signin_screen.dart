import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_up_in/color_utilis.dart';
import 'package:sign_up_in/reusable_widget.dart';
import 'package:sign_up_in/Login_Signup/signup_screen.dart';
import 'package:sign_up_in/wel_screen.dart';
import 'package:sign_up_in/config.dart';
import 'package:http/http.dart' as http;


class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  bool _isNotValid = false;

  late SharedPreferences prefs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSharedPref();
  }

  Future<void> initSharedPref()  async {
    prefs = await SharedPreferences.getInstance();
}

  void loginUser() async{
    if(_emailTextController.text.isNotEmpty && _passwordTextController.text.isNotEmpty)
    {

      var regBody = {
        "email" : _emailTextController.text,
        "password" : _passwordTextController.text
      };

      var response = await http.post(Uri.parse(login),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(regBody)
      );

      var jsonResponse = jsonDecode(response.body);

      // print(jsonResponse['status']);

      if(jsonResponse['status'])
      {
        var myToken = jsonResponse['token'];
        prefs.setString("token", myToken);
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors:
          [
                hexStringToColor("4169E1"
                ),hexStringToColor("1E90FF"),
                hexStringToColor("4169E1"),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                ColorFiltered(colorFilter: ColorFilter.mode(Colors.white, BlendMode.colorBurn)),
                Image.asset("assets/images/logo (1).png",width: 150,height: 150,),

                SizedBox(
                  height: 30,
                ),
                // reusableTextField("Enter UserName", Icons.person_outline,
                //     false, _emailTextController),
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
                      labelText: "Enter email",
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
                SizedBox(
                  height: 20,
                ),
                // reusableTextField("Enter Password", Icons.lock_outline ,
                //     true, _passwordTextController),
                TextField(controller: _passwordTextController,
                  obscureText: true,
                  enableSuggestions: true,
                  autocorrect: true,
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
                      errorText: _isNotValid ? "Enter proper information " : null,
                      filled: true,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      fillColor: Colors.white.withOpacity(0.3),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(width: 0,style: BorderStyle.none))

                  ),
                  keyboardType: TextInputType.visiblePassword,


                ),
                SizedBox(
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
                      loginUser();
                      //code
                    },
                    child: Text(
                      'LOGIN',
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
                ),
                // SignInUpButton(context, true, () {
                //   FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text,
                //       password: _passwordTextController.text).then((value) {
                //         Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => WelcomeScreen()));
                //   }).onError((error, stackTrace) {
                //     print("Error");
                //   });
                //
                // }),
                signUpOption()
              ],
            ),
          ),
        ),
    ),
    );
  }

  Row signUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

}




import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_in/color_utilis.dart';
import 'package:sign_up_in/reusable_widget.dart';
import 'package:sign_up_in/signup_screen.dart';
import 'package:sign_up_in/wel_screen.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
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
                reusableTextField("Enter UserName", Icons.person_outline,
                    false, _emailTextController),
                SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline ,
                    true, _passwordTextController),
                SizedBox(
                  height: 20,
                ),
                SignInUpButton(context, true, () {
                  FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text,
                      password: _passwordTextController.text).then((value) {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomeScreen()));
                  }).onError((error, stackTrace) {
                    print("Error");
                  });

                }),
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




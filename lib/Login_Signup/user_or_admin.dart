import 'package:flutter/material.dart';
import 'package:sign_up_in/Login_Signup/signin_screen.dart';
import 'package:sign_up_in/wel_screen.dart';

class UserOrAdminScreen extends StatefulWidget {
  const UserOrAdminScreen({super.key});

  @override
  State<UserOrAdminScreen> createState() => _UserOrAdminScreenState();
}

class _UserOrAdminScreenState extends State<UserOrAdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo (1).png',
              height: 150,
              color: Colors.blue,
            ), //150
            Text(
              "PICT Clubhub",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Are you a User or an Admin?",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white10,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WelcomeScreen();
                }));
              },
              child: Container(
                width: 100,
                alignment: Alignment.center,
                child: const Text(
                  "User",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white10,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignInScreen();
                }));
              },
              child: Container(
                width: 100,
                alignment: Alignment.center,
                child: const Text("Admin",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

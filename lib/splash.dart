import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_in/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Splash Screen',
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo (1).png', height: 150,),//150
            Text(
              "PICT CLUBHUB",
              style: TextStyle(
                fontSize: 32,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'CustomFont',
              ),
            ),

            const SizedBox(height: 30,),
            if(defaultTargetPlatform == TargetPlatform.iOS)
              const CupertinoActivityIndicator(
                color: Colors.black,
                radius: 20,
              )
            else
              const CircularProgressIndicator(
                color: Colors.black,
              )
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Home(),
    );
  }
}
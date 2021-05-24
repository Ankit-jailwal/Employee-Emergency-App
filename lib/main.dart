import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:emergencyapp/routes.dart';
import 'package:emergencyapp/screens/signIn/signIn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Employee Emergency App',
      //theme: theme(),
      home: AnimatedSplashScreen(
        duration: 2500,
        splash: Image.asset("assets/images/Emergency.jpg"),
        splashIconSize: 250,
        nextScreen: signIn(),
        splashTransition: SplashTransition.slideTransition,
        backgroundColor: Colors.white,
      ),
      routes: routes,
    );
  }
}

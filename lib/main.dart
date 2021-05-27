import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:emergencyapp/constant.dart';
import 'package:emergencyapp/routes.dart';
import 'package:emergencyapp/screens/signIn/signIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EmergencyApp());
}

class EmergencyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Employee Emergency App',
      home: AnimatedSplashScreen(
        duration: 2000,
        splash: Column(
          children: [
            Container(
                width: 200,
                child:
            Image.asset("assets/images/Emergency.png")),
            SizedBox(height: 20,),
            Text("Employee Emergency App",style: TextStyle(color: kPrimaryColor,fontSize: 20,fontWeight: FontWeight.w600),),
           // CircularProgressIndicator(color: kPrimaryLightColor,)
          ],
        ),
        splashIconSize: 250,
        nextScreen: signIn(),
        splashTransition: SplashTransition.slideTransition,
        backgroundColor: Colors.white,
      ),
      routes: routes,
    );
  }
}

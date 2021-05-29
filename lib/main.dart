
import 'package:emergencyapp/constant.dart';
import 'package:emergencyapp/routes.dart';
import 'package:emergencyapp/screens/signIn/signIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(EmergencyApp());
}

class EmergencyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Employee Emergency App',
      home:SplashScreen(
          useLoader: true,
          loadingTextPadding: EdgeInsets.all(5),
          loadingText: Text("Loading",style: TextStyle(color: kPrimaryColor,fontSize: 16,fontWeight: FontWeight.w400,fontFamily: "oswald"),),
          seconds: 3,
          navigateAfterSeconds: new signIn(),
          title: Text("Employee Emergency App",style: TextStyle(color: kPrimaryColor,fontSize: 24,fontWeight: FontWeight.w600,fontFamily: "oswald"),),
          image: new Image.asset("assets/images/Emergency.png"),
          photoSize: 100,
          backgroundColor: Colors.white,
          styleTextUnderTheLoader: new TextStyle(),
          loaderColor: kPrimaryLightColor
      ),
      routes: routes,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:move_to_background/move_to_background.dart';
import 'package:emergencyapp/screens/signIn/components/body.dart';

class signIn extends StatelessWidget {
  static String routeName = "/signIn";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       body: Body()
    );
  }
}

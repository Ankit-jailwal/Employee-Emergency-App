import 'package:flutter/material.dart';
import 'package:move_to_background/move_to_background.dart';
import 'package:emergencyapp/screens/signIn/components/body.dart';

class signIn extends StatelessWidget {
  static String routeName = "/signIn";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Dashboard",style: TextStyle(fontSize: 14,color: Colors.white),),
        leading: IconButton(
            onPressed: (){
               MoveToBackground.moveTaskToBack();
            },
            icon: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
      ),
       body: Body()
    );
  }
}

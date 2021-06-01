import 'package:emergencyapp/constant.dart';
import 'package:flutter/material.dart';
import 'package:emergencyapp/screens/dashBoard/components/body.dart';

class dashBoard extends StatelessWidget {
  static String routeName = "/dashBoard";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: kPrimaryColor.withOpacity(0.7),
            title: Text("Dashboard", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),
            leading: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
          ),
          body: Body()
      ),
    );
  }
}
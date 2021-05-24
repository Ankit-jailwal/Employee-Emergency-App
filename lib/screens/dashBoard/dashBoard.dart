import 'package:flutter/material.dart';
import 'package:emergencyapp/screens/dashBoard/components/body.dart';

class dashBoard extends StatelessWidget {
  static String routeName = "/dashBoard";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff262833),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
        ),
        body: Body()
    );
  }
}
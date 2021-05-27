import 'package:flutter/material.dart';

class Body extends StatefulWidget {


  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/login_bottom.png",
              width: size.width * 0.4,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "LOGIN",
                  style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'hacked',fontSize: 40,letterSpacing: 2.5,color:Color(0xFF6F35A5)),
                ),
                SizedBox(height: size.height * 0.03),
                Image.asset(
                  "assets/images/login.png",
                  height: size.height * 0.35,
                ),
                SizedBox(height: size.height * 0.03),

                SizedBox(height: size.height * 0.03),

              ],
            ),
          ),
        ],
      ),
    );

  }
}

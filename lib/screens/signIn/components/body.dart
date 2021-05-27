import 'package:emergencyapp/components/disbaleScrollGlow.dart';
import 'package:emergencyapp/constant.dart';
import 'package:emergencyapp/screens/dashBoard/dashBoard.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {


  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _isHidden = true;
  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
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
          ScrollConfiguration(
            behavior: disableScrollGlow(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: size.height * 0.03),
                  Image.asset(
                    "assets/images/login.png",
                    height: size.height * 0.35,
                  ),
                  SizedBox(height: size.height * 0.03),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child:  TextField(
                      cursorColor: kPrimaryColor,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: kPrimaryColor,
                        ),
                        hintText: "Your Email",
                        border: InputBorder.none,
                      ),
                  ),
                ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: kPrimaryLightColor,
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child:  TextField(
                      obscureText: _isHidden,
                      cursorColor: kPrimaryColor,
                      decoration: InputDecoration(
                        hintText: "Password",
                        icon: Icon(
                          Icons.lock,
                          color: kPrimaryColor,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: _toggleVisibility,
                          child: _isHidden?Icon(
                            Icons.visibility_off,
                            color: kPrimaryColor,
                          ):Icon(
                            Icons.visibility,
                            color: kPrimaryColor,
                          ),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: size.width * 0.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>dashBoard()));
                      },
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      color: kPrimaryColor,
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                  SizedBox(height: size.height * 0.03),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}

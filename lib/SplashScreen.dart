import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';
import 'HomePage.dart';
import 'Login.dart';
import 'package:bordered_text/bordered_text.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();

    _mockCheckForSession().then(
            (status) {
          if (status) {
            _navigateToSignUp();
          } else {
            _navigateToSignUp();
          }
        }
    );
  }


  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 9000), () {});

    return true;
  }

  void _navigateToSignUp(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => HomePage()
        )
    );
  }

  void _navigateToLogin(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => LoginPage()
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(16.0),
//                child: BorderedText(
//                  strokeWidth: 4.0,
//                  strokeColor: Colors.blue,
//                  child: Text(
//                    "LOES",
//                    style: TextStyle(
//                        fontSize: 120.0,
//                        fontFamily: 'Cairo',
//                        color: Color(0xffe100ff),
//                    ),
//                  ),
//                ),
            child : Image.asset('assets/images/logo.jpeg'),
              ),
          ],
        ),
      ),
    );
  }


}

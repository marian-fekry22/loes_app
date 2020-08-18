import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'Login.dart';
import 'Signup.dart';
import 'Discover.dart';
import 'package:bordered_text/bordered_text.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  Widget _HomePageWidget() {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.black,
      //width: MediaQuery.of(context).size.width,
      height: deviceHeight<300?700:deviceHeight>800?100:deviceHeight,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            children: <Widget>[
              new Expanded (
                    child: Container(
                      color: Colors.black,
                      //height: MediaQuery.of(context).size.height * 0.25,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/logo.jpeg' , height:120),
                        ],
                      ),
                    ),

              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Expanded (
                    child: Container(
                      color: Colors.black,
                      //height: MediaQuery.of(context).size.height * 0.20,
                      child: Column(
                        children: <Widget>[
                          FittedBox(
                            fit:BoxFit.fitWidth,
                            child:
                            Text(
                              'THE GLOBAL',
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          FittedBox(fit:BoxFit.fitWidth,
                            child:
                            Text(
                              'PLATFORM FOR',
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          FittedBox(
                            fit:BoxFit.fitWidth,
                            child:
                            Text(
                              'STYLE',
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),

              ),

            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Expanded (
          child : Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20.0 , left :20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (BuildContext context) => SignUpPage()
                            )
                        );
                      },
                      color: Colors.white,
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(fontSize: 20, color: Colors.black ,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ]
              ),
              )
            ],
          ),

          Container(
            //padding: const EdgeInsets.only( bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Text("LOGIN IN " ,  style: TextStyle(fontSize: 14 ,color: Colors.white)),
                  onTap: () {Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) => LoginPage()
                                      )
                                  );},
                ),
                InkWell(
                  child: Text("OR START BRWOSING" ,   style: TextStyle(fontSize: 14 ,color: Colors.white ,decoration: TextDecoration.underline,)),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                                     MaterialPageRoute(
                                          builder: (BuildContext context) => DiscoverPage()
                                     )
                    );},
                )

              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Expanded (
                  flex: 1,
                  child : Padding(
                    padding: const EdgeInsets.only(left:0),
                    child: Container(
                      //width:  MediaQuery.of(context).size.width * 0.30,
                      child: Column(
                        children: <Widget>[
                          Text('Sing in with' , style: TextStyle(fontSize: 10 , color: Colors.white)),
                        ],
                      ),
                    ),
                  )
              ),
            ],
          ),
          Container(
            //padding: const EdgeInsets.only( bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Image.asset('assets/images/facebook-logo.png' , width: 30),
                  onTap: () {Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (BuildContext context) => DiscoverPage()
                      )
                  );},
                ),
                SizedBox(
                  width: 20.0,
                ),
                InkWell(
                  child: Image.asset('assets/images/google-logo.png', width: 30,),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (BuildContext context) => DiscoverPage()
                        )
                    );},
                )

              ],
            ),
          ),
        ],
      ),

    );

  }


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //SizedBox(height: 10.0),
                    _HomePageWidget(),
                    //SizedBox(height: 85.0),
                  ],
                ),
              ),
            ),
            //Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'Porduct.dart';
import 'Widget/BottomMenu.dart';

class WishListPage extends StatefulWidget {
  WishListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WishListPageState createState() => _WishListPageState();
}


class _WishListPageState extends State<WishListPage> {
  bool faourite = true;
  Widget _discoverWidget() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Expanded (
                  flex:2,
                  child : Padding(
                    padding: const EdgeInsets.only(left:10 , right:10),
                      child: InkWell(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          FittedBox(fit:BoxFit.fitWidth,
                            child:
                            Text(
                              '250 QAR',
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                //fontSize: 15,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          Image.asset(
                            ('assets/images/6.jpeg'),
                            height: MediaQuery.of(context).size.height * 0.25,
                          ),

                          SizedBox(
                            height: 10.0,
                          ),
                          FittedBox(
                            fit:BoxFit.fitWidth,
                            child : Icon(
                              Icons.favorite_border,
                              size: 24.0,
                              color: (faourite == true ? Colors.red : Colors.black),
                            ),
                          ),
                          FittedBox(fit:BoxFit.fitWidth,
                            child:  Text('aenean eu tristique'.toUpperCase(),
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 14,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w300,
                              ),
                              textAlign: TextAlign.center,
                            ),),
                          FittedBox(fit:BoxFit.fitWidth,
                            child:  Text('aenean eu tristique'.toUpperCase(),
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 10,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w200,
                              ),
                              textAlign: TextAlign.center,
                            ),),

                        ],
                      ),
                    ),
                        onTap: (){
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Product()
                              )
                          );
                        },
                      ),
                  )
              ),
              new Expanded (
                  flex:2,
                  child : Padding(
                    padding: const EdgeInsets.only(left:10 , right:10),
                    child: InkWell(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            FittedBox(fit:BoxFit.fitWidth,
                              child:
                              Text(
                                '250 QAR',
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  //fontSize: 15,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Image.asset(
                              ('assets/images/6.jpeg'),
                              height: MediaQuery.of(context).size.height * 0.25,
                            ),

                            SizedBox(
                              height: 10.0,
                            ),
                            FittedBox(
                              fit:BoxFit.fitWidth,
                              child : Icon(
                                Icons.favorite_border,
                                size: 24.0,
                                color: (faourite == true ? Colors.red : Colors.black),
                              ),
                            ),
                            FittedBox(fit:BoxFit.fitWidth,
                              child:  Text('aenean eu tristique'.toUpperCase(),
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),),
                            FittedBox(fit:BoxFit.fitWidth,
                              child:  Text('aenean eu tristique'.toUpperCase(),
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 10,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w200,
                                ),
                                textAlign: TextAlign.center,
                              ),),

                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (BuildContext context) => Product()
                            )
                        );
                      },
                    ),
                  )
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Expanded (
                  flex:2,
                  child : Padding(
                    padding: const EdgeInsets.only(left:10 , right:10),
                    child: InkWell(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            FittedBox(fit:BoxFit.fitWidth,
                              child:
                              Text(
                                '250 QAR',
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  //fontSize: 15,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Image.asset(
                              ('assets/images/6.jpeg'),
                              height: MediaQuery.of(context).size.height * 0.25,
                            ),

                            SizedBox(
                              height: 10.0,
                            ),
                            FittedBox(
                              fit:BoxFit.fitWidth,
                              child : Icon(
                                Icons.favorite_border,
                                size: 24.0,
                                color: (faourite == true ? Colors.red : Colors.black),
                              ),
                            ),
                            FittedBox(fit:BoxFit.fitWidth,
                              child:  Text('aenean eu tristique'.toUpperCase(),
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),),
                            FittedBox(fit:BoxFit.fitWidth,
                              child:  Text('aenean eu tristique'.toUpperCase(),
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 10,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w200,
                                ),
                                textAlign: TextAlign.center,
                              ),),

                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (BuildContext context) => Product()
                            )
                        );
                      },
                    ),
                  )
              ),
              new Expanded (
                  flex:2,
                  child : Padding(
                    padding: const EdgeInsets.only(left:10 , right:10),
                    child: InkWell(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            FittedBox(fit:BoxFit.fitWidth,
                              child:
                              Text(
                                '250 QAR',
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  //fontSize: 15,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Image.asset(
                              ('assets/images/6.jpeg'),
                              height: MediaQuery.of(context).size.height * 0.25,
                            ),

                            SizedBox(
                              height: 10.0,
                            ),
                            FittedBox(
                              fit:BoxFit.fitWidth,
                              child : Icon(
                                Icons.favorite_border,
                                size: 24.0,
                                color: (faourite == true ? Colors.red : Colors.black),
                              ),
                            ),
                            FittedBox(fit:BoxFit.fitWidth,
                              child:  Text('aenean eu tristique'.toUpperCase(),
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),),
                            FittedBox(fit:BoxFit.fitWidth,
                              child:  Text('aenean eu tristique'.toUpperCase(),
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 10,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w200,
                                ),
                                textAlign: TextAlign.center,
                              ),),

                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (BuildContext context) => Product()
                            )
                        );
                      },
                    ),
                  )
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Expanded (
                  flex:2,
                  child : Padding(
                    padding: const EdgeInsets.only(left:10 , right:10),
                    child: InkWell(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            FittedBox(fit:BoxFit.fitWidth,
                              child:
                              Text(
                                '250 QAR',
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  //fontSize: 15,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Image.asset(
                              ('assets/images/6.jpeg'),
                              height: MediaQuery.of(context).size.height * 0.25,
                            ),

                            SizedBox(
                              height: 10.0,
                            ),
                            FittedBox(
                              fit:BoxFit.fitWidth,
                              child : Icon(
                                Icons.favorite_border,
                                size: 24.0,
                                color: (faourite == true ? Colors.red : Colors.black),
                              ),
                            ),
                            FittedBox(fit:BoxFit.fitWidth,
                              child:  Text('aenean eu tristique'.toUpperCase(),
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),),
                            FittedBox(fit:BoxFit.fitWidth,
                              child:  Text('aenean eu tristique'.toUpperCase(),
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 10,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w200,
                                ),
                                textAlign: TextAlign.center,
                              ),),

                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (BuildContext context) => Product()
                            )
                        );
                      },
                    ),
                  )
              ),
              new Expanded (
                  flex:2,
                  child : Padding(
                    padding: const EdgeInsets.only(left:10 , right:10),
                    child: InkWell(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            FittedBox(fit:BoxFit.fitWidth,
                              child:
                              Text(
                                '250 QAR',
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  //fontSize: 15,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Image.asset(
                              ('assets/images/6.jpeg'),
                              height: MediaQuery.of(context).size.height * 0.25,
                            ),

                            SizedBox(
                              height: 10.0,
                            ),
                            FittedBox(
                              fit:BoxFit.fitWidth,
                              child : Icon(
                                Icons.favorite_border,
                                size: 24.0,
                                color: (faourite == true ? Colors.red : Colors.black),
                              ),
                            ),
                            FittedBox(fit:BoxFit.fitWidth,
                              child:  Text('aenean eu tristique'.toUpperCase(),
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),),
                            FittedBox(fit:BoxFit.fitWidth,
                              child:  Text('aenean eu tristique'.toUpperCase(),
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 10,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w200,
                                ),
                                textAlign: TextAlign.center,
                              ),),

                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (BuildContext context) => Product()
                            )
                        );
                      },
                    ),
                  )
              ),
            ],
          ),


        ],
      ),

    );
  }



  Widget _header() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text('WISHLIST' , style: TextStyle(fontSize: 25, fontFamily: 'Cairo' , color: const Color(0xff000000))),
      leading: IconButton(
        tooltip: 'WISHLIST',
        icon: const Icon(Icons.favorite),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar :BottomMenu(),
      backgroundColor: Colors.white,
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
                    _header(),
                    SizedBox(height: 5.0),
                    _discoverWidget(),
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
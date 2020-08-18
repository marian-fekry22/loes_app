import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'WishList_old.dart';
import 'Search2.dart';
import 'Widget/BottomMenu.dart';
import 'Porduct.dart';
import 'Contants/MyText.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SearchPageState createState() => _SearchPageState();
}


class _SearchPageState extends State<SearchPage> {
  bool faourite = true;
  List<String> _address_data = [
    'Man',
    'Woman',
    'Access',
    'Color' ,
    'fashion',
    'kids',
  ];
  Widget _discoverWidget() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Expanded (
                  flex:5,
                  child : Padding(
                    padding: const EdgeInsets.only(left:10 , right:10,bottom: 20 ,top:40),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0 , vertical: 2.0),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                  borderSide: BorderSide(color: Colors.black)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                borderSide: BorderSide(color: const Color(0xffccc7c7)),
                              ),
                              filled: true,
                              fillColor: Colors.black12,
                              labelText: 'Search',
                              labelStyle: TextStyle(
                                color: Colors.black,fontSize: 12.0,
                                fontFamily: 'Cairo',
                              )
                          )),

                        ],
                      ),
                    ),
                  )
              ),
              new Expanded (
                  flex:1,
                  child : Padding(
                    padding: const EdgeInsets.only(left:10 , right:10),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          new Align(
                            alignment: Alignment.topCenter,
                             child: new FittedBox(fit:BoxFit.fitWidth,
                              child: new
                              Icon(
                                Icons.filter_list,
                                color: Colors.grey,
                                size: 30.0,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  )
              ),
              new Expanded (
                  flex:2,
                  child : Padding(
                    padding: const EdgeInsets.only(left:10 , right:10),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                      new Align(
                      alignment: Alignment.topCenter,
                        child: new   FittedBox(fit:BoxFit.fitWidth,
                            child:
                            Text ('Filter' , style:  TextStyle (fontSize: 20),)
                          ),
                      ),

                        ],

                      ),
                    ),
                  )
              ),
            ],
          ),
          __tabs(),
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

  Widget __tabs(){
    return Container(
        margin: EdgeInsets.all(5),
        //padding: EdgeInsets.symmetric(horizontal: 30),
        height: 50,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: _address_data.length,
            itemBuilder: (BuildContext context, int index) => Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26 , width: 1.0,),
                  borderRadius: new BorderRadius.all(
                    const Radius.circular(5.0),
                  )
              ),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 2),
                //padding: EdgeInsets.symmetric(horizontal: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    MyText(title: _address_data[index],colorr: Colors.black26,fontWeight: FontWeight.bold,),
                  ],
                ),
              ),

            )));
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
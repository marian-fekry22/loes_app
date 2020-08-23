import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loes_app/Contants/MyText.dart';
import 'package:loes_app/model/Categories.dart';
import 'package:loes_app/model/productDetails.dart';
import 'dart:async';
import 'dart:convert';
import 'Porduct.dart';
import 'Widget/BottomMenu.dart';

class CalendarTab extends StatefulWidget {
  CalendarTab({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CalendarTabState createState() => _CalendarTabState();
}


class _CalendarTabState extends State<CalendarTab> {

  Future<productDetails> futuredata;




  bool connection=false;


  @override
  void initState() {
    super.initState();
//    futuredata = fetch_DiscoverData_index();
    check_internet();


  }


  @override
  void dispose() {
//    _connectivitySubscription.cancel();
    super.dispose();
  }


  check_internet()async{


    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        setState(() {
          connection=true;
          futuredata = fetch_DiscoverData_index();
          print('connected');
        });
//          connection=true;
//          futuredata = fetch_DiscoverData_index();
//          print('connected');


      }
    } on SocketException catch (_) {

      setState(() {
        connection=false;
        showInSnackBar();
      });


      print('not connected');
    }

  }



  Future<productDetails> fetch_DiscoverData_index() async {
    final response = await http.get('https://itloes.com/m/api/productDetails?id=1');

    if (response.statusCode == 200) {


      return productDetails.fromJson(json.decode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }



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
                                builder: (BuildContext context) => Product(product_id: 0,)
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
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        key: _scaffoldKey,
//      bottomNavigationBar :BottomMenu(),


      body:(connection)?FutureBuilder<productDetails>(
        future: futuredata,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
                height: height,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(0),

                  crossAxisCount: 2,
                  children: List.generate( snapshot.data.detailss.length, (index) {
                    return  InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (BuildContext context) => Product(product_id: snapshot.data.detailss[index]['id'],)
                            )
                        );
                      },
                      child: Container(
//                        height: 700,
//                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
//              color: Colors.teal[100],
                            border: Border.all(color: Colors.black12),
                            image: DecorationImage(image:
                            NetworkImage('${snapshot.data.detailss[index]['image']}',),
                                fit: BoxFit.fill)

                        ),
                        padding: const EdgeInsets.all(8),
                        child: Stack(
                          children: [
                            Text('${snapshot.data.detailss[index]['release_date']}'),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text('${snapshot.data.detailss[index]['description']}',textAlign: TextAlign.center,),

                                )),
                          ],
                        ),

                      ),
                    );
                  }
                  ),
                )
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          // By default, show a loading spinner.
          return Center(child: CircularProgressIndicator());
        },
      ):null


    );
  }




  showInSnackBar() {
    return _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text('Check Your Internet Connection!'),
          action: SnackBarAction(
            label: 'Warrning',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        )
    );
  }

}
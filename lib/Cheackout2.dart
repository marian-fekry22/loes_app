import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'Login.dart';
class CheckoutPage extends StatefulWidget {
  CheckoutPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}


class _CheckoutPageState extends State<CheckoutPage> {

  Widget _CheckoutWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Expanded (
                  flex:1,
                  child : Padding(
                    padding: const EdgeInsets.only(left:0 , right:0),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          IconButton(
                            tooltip: 'wants',
                            icon: const Icon(Icons.favorite_border),
                          ),
                          IconButton(
                            tooltip: 'wants',
                            icon: const Icon(Icons.favorite_border),
                          ),

                        ],
                      ),
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
      title: const Text('Payment' , style: TextStyle(fontSize: 25, fontFamily: 'Cairo' , color: const Color(0xff000000))),
      leading: IconButton(
        tooltip: 'Payment',
        icon: const Icon(Icons.arrow_back),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    int _currentIndex = 0;
    _onTap(_currentIndex) {
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        if(_currentIndex==0){
          return new LoginPage();
        }
        else if(_currentIndex==1){
          return new LoginPage();
        }
        else if(_currentIndex==3){
          return new LoginPage();
        }

      }));
    }


    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: [
          new BottomNavigationBarItem(icon: new Icon(Icons.home , color: Colors.white,), title: new Text("home".toUpperCase() ,style: TextStyle(color : Colors.white , fontSize: 10))),
          new BottomNavigationBarItem(icon: new Icon(Icons.search , color: Colors.white,), title: new Text("search".toUpperCase() , style: TextStyle(color : Colors.white , fontSize: 10))),
          new BottomNavigationBarItem(icon: new Icon(Icons.accessibility , color: Colors.white,), title: new Text("wishlist".toUpperCase(), style: TextStyle(color : Colors.white , fontSize: 10))),
          new BottomNavigationBarItem(icon: new Icon(Icons.person , color: Colors.white,), title: new Text("profile".toUpperCase() , style: TextStyle(color : Colors.white , fontSize: 10)))
        ],
        onTap: _onTap,
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _header(),
                  SizedBox(height: 5.0),
                  _CheckoutWidget(),
                ],
              ),
            ),
            //Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}
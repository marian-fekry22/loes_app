import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'WishList_old.dart';
import 'Search2.dart';
import 'Widget/BottomMenu.dart';
import 'Porduct.dart';
import 'Contants/MyText.dart';
import 'CalendarTab.dart';

class DiscoverTab extends StatefulWidget {
  DiscoverTab({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DiscoverTabState createState() => _DiscoverTabState();
}


class _DiscoverTabState extends State<DiscoverTab> {
  bool faourite = true;
  List<String> _address_data = [
    'Man',
    'Woman',
    'Access',
    'Color' ,
    'fashion',
    'kids',
  ];

  Widget __tabTitle(){
     return Text('Already Arrived' , style: TextStyle(fontSize: 15),);
  }

  Widget __tabs(){
    return Container(
        margin: EdgeInsets.all(5),
        //padding: EdgeInsets.symmetric(horizontal: 30),
        height: 150,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: _address_data.length,
            itemBuilder: (BuildContext context, int index) => Container(
              padding: EdgeInsets.all(3),
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26 , width: 1.0,),
                  borderRadius: new BorderRadius.all(
                    const Radius.circular(5.0),
                  )
              ),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/1.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                margin: EdgeInsets.symmetric(vertical: 2),
                //padding: EdgeInsets.symmetric(horizontal: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    MyText(title: _address_data[index],colorr: Colors.black,fontWeight: FontWeight.bold,),
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
                    __tabTitle(),
                    __tabs(),
                    __tabTitle(),
                    __tabs(),
                    __tabTitle(),
                    __tabs(),
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
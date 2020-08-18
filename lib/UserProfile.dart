import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'Login.dart';
import 'WishList_old.dart';
import 'Checkout.dart';
import 'Widget/BottomMenu.dart';
class ProfilePage extends StatefulWidget {
  ProfilePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfilePageState createState() => _ProfilePageState();
}


class _ProfilePageState extends State<ProfilePage> {
  Widget _paymentWidget() {
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
                           FittedBox(fit:BoxFit.fitWidth,
                             child:
                             Text(
                               'Wants',
                               style: TextStyle(
                                 fontFamily: 'Cairo',
                                 fontSize: 15,
                                 color: const Color(0xff000000),
                                 fontWeight: FontWeight.w600,
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   )
               ),
               new Expanded (
                   flex:1,
                   child : Padding(
                     padding: const EdgeInsets.only(left:60),
                     child: Container(
                       child: Column(
                         children: <Widget>[
                           InkWell(
                           // When the user taps the button, show a snackbar.
                           onTap: () {
                             Navigator.of(context).pushReplacement(
                                 MaterialPageRoute(
                                     builder: (BuildContext context) => WishListPage()
                                 )
                             );
                     },
                       child: Container(
                         child:  IconButton(
                           tooltip: 'wants',
                           icon: const Icon(Icons.arrow_back_ios),
                         ),
                       ),
                     ),

                         ],
                       ),
                     ),
                   )
               ),
             ],
           ),
           Divider(
             color: Colors.black,
           ),
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
                           FittedBox(fit:BoxFit.fitWidth,
                             child:
                             Text(
                               'Offers',
                               style: TextStyle(
                                 fontFamily: 'Cairo',
                                 fontSize: 15,
                                 color: const Color(0xff000000),
                                 fontWeight: FontWeight.w600,
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   )
               ),
               new Expanded (
                   flex:1,
                   child : Padding(
                     padding: const EdgeInsets.only(left:60),
                     child: Container(
                       child: Column(
                         children: <Widget>[
                           InkWell(
                             // When the user taps the button, show a snackbar.
                             onTap: () {
                               Navigator.of(context).pushReplacement(
                                   MaterialPageRoute(
                                       builder: (BuildContext context) => WishListPage()
                                   )
                               );
                             },
                             child: Container(
                               child:  IconButton(
                                 tooltip: 'wants',
                                 icon: const Icon(Icons.arrow_back_ios),
                               ),
                             ),
                           ),

                         ],
                       ),
                     ),
                   )
               ),
             ],
           ),
           Divider(
             color: Colors.black,
           ),
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
                           FittedBox(fit:BoxFit.fitWidth,
                             child:
                             Text(
                               'Owns',
                               style: TextStyle(
                                 fontFamily: 'Cairo',
                                 fontSize: 15,
                                 color: const Color(0xff000000),
                                 fontWeight: FontWeight.w600,
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   )
               ),
               new Expanded (
                   flex:1,
                   child : Padding(
                     padding: const EdgeInsets.only(left:60),
                     child: Container(
                       child: Column(
                         children: <Widget>[
                           InkWell(
                             // When the user taps the button, show a snackbar.
                             onTap: () {
                               Navigator.of(context).pushReplacement(
                                   MaterialPageRoute(
                                       builder: (BuildContext context) => WishListPage()
                                   )
                               );
                             },
                             child: Container(
                               child:  IconButton(
                                 tooltip: 'wants',
                                 icon: const Icon(Icons.arrow_back_ios),
                               ),
                             ),
                           ),

                         ],
                       ),
                     ),
                   )
               ),
             ],
           ),
           Divider(
             color: Colors.black,
           ),
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
                           FittedBox(fit:BoxFit.fitWidth,
                             child:
                             Text(
                               'Stronge',
                               style: TextStyle(
                                 fontFamily: 'Cairo',
                                 fontSize: 15,
                                 color: const Color(0xff000000),
                                 fontWeight: FontWeight.w600,
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   )
               ),
               new Expanded (
                   flex:1,
                   child : Padding(
                     padding: const EdgeInsets.only(left:60),
                     child: Container(
                       child: Column(
                         children: <Widget>[
                           InkWell(
                             // When the user taps the button, show a snackbar.
                             onTap: () {
                               Navigator.of(context).pushReplacement(
                                   MaterialPageRoute(
                                       builder: (BuildContext context) => WishListPage()
                                   )
                               );
                             },
                             child: Container(
                               padding: EdgeInsets.all(12.0),
                               child:  IconButton(
                                 tooltip: 'wants',
                                 icon: const Icon(Icons.arrow_back_ios),
                               ),
                             ),
                           ),

                         ],
                       ),
                     ),
                   )
               ),
             ],
           ),
           Divider(
             color: Colors.black,
           ),
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
                           FittedBox(fit:BoxFit.fitWidth,
                             child:
                             Text(
                               'Inspiration',
                               style: TextStyle(
                                 fontFamily: 'Cairo',
                                 fontSize: 15,
                                 color: const Color(0xff000000),
                                 fontWeight: FontWeight.w600,
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   )
               ),
               new Expanded (
                   flex:1,
                   child : Padding(
                     padding: const EdgeInsets.only(left:60),
                     child: Container(
                       child: Column(
                         children: <Widget>[
                           InkWell(
                             // When the user taps the button, show a snackbar.
                             onTap: () {
                               Navigator.of(context).pushReplacement(
                                   MaterialPageRoute(
                                       builder: (BuildContext context) => WishListPage()
                                   )
                               );
                             },
                             child: Container(
                               padding: EdgeInsets.all(12.0),
                               child:  IconButton(
                                 tooltip: 'wants',
                                 icon: const Icon(Icons.arrow_back_ios),
                               ),
                             ),
                           ),

                         ],
                       ),
                     ),
                   )
               ),
             ],
           ),
           Divider(
             color: Colors.black,
           ),
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
                           FittedBox(fit:BoxFit.fitWidth,
                             child:
                             Text(
                               'order',
                               style: TextStyle(
                                 fontFamily: 'Cairo',
                                 fontSize: 15,
                                 color: const Color(0xff000000),
                                 fontWeight: FontWeight.w600,
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   )
               ),
               new Expanded (
                   flex:1,
                   child : Padding(
                     padding: const EdgeInsets.only(left:60),
                     child: Container(
                       child: Column(
                         children: <Widget>[
                           InkWell(
                             // When the user taps the button, show a snackbar.
                             onTap: () {
                               Navigator.of(context).pushReplacement(
                                   MaterialPageRoute(
                                       builder: (BuildContext context) => WishListPage()
                                   )
                               );
                             },
                             child: Container(
                               child:  IconButton(
                                 tooltip: 'wants',
                                 icon: const Icon(Icons.arrow_back_ios),
                               ),
                             ),
                           ),

                         ],
                       ),
                     ),
                   )
               ),
             ],
           ),
           Divider(
             color: Colors.black,
           ),
         ],
       ),
     );

  }

  Widget _header() {
    return AppBar(
      backgroundColor: Colors.white,
        title: const Text('User Name Profile' , style: TextStyle(fontSize: 25, fontFamily: 'Cairo' , color: const Color(0xff000000))),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.settings,
            color: Colors.black,
          ),
          onPressed: () {
            // do something
          },
        )
      ],
    leading: IconButton(
    tooltip: 'Payment',
    icon: const Icon(Icons.person),
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
              padding: EdgeInsets.symmetric(horizontal: 3),
               child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    _header(),
                    SizedBox(height: 5.0),
                    _paymentWidget(),
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
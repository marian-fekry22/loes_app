import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'Login.dart';
import 'Widget/BottomMenu.dart';
class PaymentPage extends StatefulWidget {
  PaymentPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PaymentPageState createState() => _PaymentPageState();
}


class _PaymentPageState extends State<PaymentPage> {

  int radio_value=0;
  String paymentMethod='paypal';
  @override
  void initState() {
    super.initState();


  }




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
                           Image.asset(
                             ('assets/images/visa-pngrepo-com.png'),
                             width: 50,
                           ),

                         ],
                       ),
                     ),
                   )
               ),
               new Expanded (
                   flex:1,
                   child : Padding(
                     padding: const EdgeInsets.only(left:0 , right:0),
                     child: Container(
                       child: Column(
                         children: <Widget>[
                           Image.asset(
                             ('assets/images/master-card-icon.png'),
                             width: 70,
                           ),

                         ],
                       ),
                     ),
                   )
               ),
               new Expanded (
                   flex:3,
                   child : Padding(
                     padding: const EdgeInsets.only(left:0 , right:0),
                     child: Container(
                       child: Column(
                         children: <Widget>[
                           FittedBox(fit:BoxFit.fitWidth,
                             child:
                             Text(
                               '+Add Credit Card',
                               style: TextStyle(
                                 fontFamily: 'Cairo',
                                 fontSize: 20,
                                 color: const Color(0xff000000),
                                 fontWeight: FontWeight.w600,
                               ),
                               textAlign: TextAlign.right,
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
                             Radio(
                               value: 0,
                               activeColor: Colors.black,
                               groupValue: radio_value,
                               onChanged: (v){
                                 setState(() {
//                                   paymentMethod='paypal';
                                   radio_value=v;
                                 });
                               },
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
                     padding: const EdgeInsets.only(left:0 , right:0),
                     child: Container(
                       child: Column(
                         children: <Widget>[
                           Image.asset(
                             ('assets/images/paypal.png'),
                             width: 70,
                           ),

                         ],
                       ),
                     ),
                   )
               ),
               new Expanded (
                   flex:2,
                   child : Padding(
                     padding: const EdgeInsets.only(left:0 , right:0),
                     child: Container(
                       child: Column(
                         children: <Widget>[
                           FittedBox(fit:BoxFit.fitWidth,
                             child:
                             Text(
                               'PayPal',
                               style: TextStyle(
                                 fontFamily: 'Cairo',
                                 fontSize: 20,
                                 color: const Color(0xff000000),
                                 fontWeight: FontWeight.w600,
                               ),
                               textAlign: TextAlign.right,
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
                             Radio(
                               value: 1,
                               activeColor: Colors.black,
                               groupValue: radio_value,
                               onChanged: (v){
                                 setState(() {
//                                   paymentMethod='Google Play';
                                   radio_value=v;
                                 });
                               },
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
                     padding: const EdgeInsets.only(left:0 , right:0),
                     child: Container(
                       child: Column(
                         children: <Widget>[
                           Image.asset(
                             ('assets/images/google-icon.png'),
                             width: 50,
                           ),

                         ],
                       ),
                     ),
                   )
               ),
               new Expanded (
                   flex:2,
                   child : Padding(
                     padding: const EdgeInsets.only(left:0 , right:0),
                     child: Container(
                       child: Column(
                         children: <Widget>[
                           FittedBox(fit:BoxFit.fitWidth,
                             child:
                             Text(
                               'Google Play',
                               style: TextStyle(
                                 fontFamily: 'Cairo',
                                 fontSize: 20,
                                 color: const Color(0xff000000),
                                 fontWeight: FontWeight.w600,
                               ),
                               textAlign: TextAlign.right,
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
        title: const Text('Payment' , style: TextStyle(fontSize: 25, fontFamily: 'Cairo' , color: const Color(0xff000000))),
    leading: IconButton(
    tooltip: 'Payment',
    icon:  Icon(Icons.arrow_back),
      onPressed: (){
     setState(() {
       if(radio_value==0){
         paymentMethod='paypal';
       }else   paymentMethod='paypal';
     });
        Navigator.pop(context,'$paymentMethod');
      },
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
            //Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}
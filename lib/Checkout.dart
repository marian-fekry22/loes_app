import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'Payment.dart';
import 'ShippingAddress.dart';
import 'Widget/BottomMenu.dart';
class CheckoutPage extends StatefulWidget {
  int product_id;
  CheckoutPage({Key key, this.title,@required this.product_id}) : super(key: key);

  final String title;

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}


class _CheckoutPageState extends State<CheckoutPage> {
  Widget _CheckoutWidget() {
     return Container(
       padding: EdgeInsets.symmetric(horizontal: 5),
       child: Container(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
       Container(
         color: Colors.black12,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               new Expanded (
                   flex:3,
                   child : Padding(
                     padding: const EdgeInsets.only(left:0 , right:0),
                     child: Container(
                       child: Column(
                         children: <Widget>[
                           Image.asset('assets/images/6.jpeg' ,  height:MediaQuery.of(context).size.height * 0.20),

                         ],
                       ),
                     ),
                   )
               ), //
               new Expanded (
                   flex:4,
                   child : Padding(
                     padding: const EdgeInsets.only(left:0 , right:0),
                     child: Container(
                       child: Column(
                         children: <Widget>[
                           FittedBox(fit:BoxFit.fitWidth,
                             child:
                             Text(
                               'Product Name',
                               style: TextStyle(
                                 fontFamily: 'Cairo',
                                 fontSize: 15,
                                 color: const Color(0xff000000),
                                 fontWeight: FontWeight.w400,
                               ),
                               textAlign: TextAlign.right,
                             ),
                           ),
                           Row (
                               children: <Widget>[
                                 new Expanded(
                                   child: Column(
                                     children : [Text('Size')],
                                   ),
                                 ),
                                 new Expanded(
                                   child: Column(
                                     children : [Text('32 UK')],
                                   ),
                                 ),
                               ]
                           ),
                           Row (
                               children: <Widget>[
                                 new Expanded(
                                   child: Column(
                                     children : [Text('Color')],
                                   ),
                                 ),
                                 new Expanded(
                                   child: Column(
                                     children : [Text('Pink')],
                                   ),
                                 ),
                               ]
                           ),
                           Row (
                               children: <Widget>[
                                 new Expanded(
                                   child: Column(
                                     children : [
                                       FittedBox(fit:BoxFit.fitWidth,
                                         child:
                                         Text(
                                           'Total',
                                           style: TextStyle(
                                             fontFamily: 'Cairo',
                                             fontSize: 15,
                                             color: const Color(0xff000000),
                                             fontWeight: FontWeight.w300,
                                           ),
                                           textAlign: TextAlign.right,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 new Expanded(
                                   flex : 1,
                                   child: Column(
                                     children : [
                                       FittedBox(fit:BoxFit.fitWidth,
                                         child:
                                         Text(
                                           '.',
                                           style: TextStyle(
                                             fontFamily: 'Cairo',
                                             //fontSize: 20,
                                             color: Colors.white,
                                             fontWeight: FontWeight.w400,
                                           ),
                                           textAlign: TextAlign.right,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ]
                           ),
                           Row (
                               children: <Widget>[
                                 new Expanded(
                                   child: Column(
                                     children : [
                                       FittedBox(fit:BoxFit.fitWidth,
                                         child:
                                         Text(
                                           '910 QAR',
                                           style: TextStyle(
                                             fontFamily: 'Cairo',
                                             fontSize: 25,
                                             color: const Color(0xff000000),
                                             fontWeight: FontWeight.w400,
                                           ),
                                           textAlign: TextAlign.right,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ]
                           ),
                         ],
                       ),
                     ),
                   )
               ),//              new Expanded (
               new Expanded (
                   flex:1,
                   child : Padding(
                     padding: const EdgeInsets.only(top:20),
                     child: Container(
                       color: Colors.black,
                       child: Column(
                         children: <Widget>[
                           IconButton(
                             tooltip: 'wants',
                             color: Colors.white,
                             icon: const Icon(Icons.favorite , color: Colors.white ),
                           ),
                           IconButton(
                             tooltip: 'wants',
                             color: Colors.white,
                             icon: const Icon(Icons.indeterminate_check_box ,  color: Colors.white ),
                           ),

                         ],
                       ),
                     ),
                   )
               ),
             ],
           ),
         ),
           SizedBox(height: 15.0),
           Divider(
             color: Colors.black,
           ),
         FittedBox(fit:BoxFit.fitWidth,
           child:
           Text(
             'View out purchase & Return Policy',
             style: TextStyle(
               decoration: TextDecoration.underline,
               fontSize: 15,
             ),
           )
         ),
           SizedBox(height: 15.0),
           Divider(
             color: Colors.black,
           ),
           Row(
               children: <Widget>[
                 new Expanded (
                     flex:3,
                     child : Padding(
                       padding: const EdgeInsets.only(left:0 , right:0),
                        child: InkWell(
                     child: Container(
                         child: Column(
                           children: <Widget>[
                             FittedBox(fit:BoxFit.fitWidth,
                                 child:
                                 Text(
                                   'Payment',
                                   style: TextStyle(
                                     fontSize: 15,
                                     color :Colors.grey,
                                   ),
                                 )
                             ),
                           ],
                         ),
                       ),
                          onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) => PaymentPage()
                              )
                          );
                          },
                        ),
                     )
                 ),
                 new Expanded (
                     flex:4,
                     child : Padding(
                       padding: const EdgeInsets.only(left:0 , right:0),
                         child: InkWell(
                       child: Container(
                         child: Column(
                           children: <Widget>[
                             FittedBox(fit:BoxFit.fitWidth,
                                 child:
                                 Text(
                                   'Add Payment Method +',
                                   style: TextStyle(
                                     fontSize: 15,
                                   ),
                                 )
                             ),
                           ],
                         ),
                       ),
                           onTap: (){
                             Navigator.of(context).pushReplacement(
                                 MaterialPageRoute(
                                     builder: (BuildContext context) => PaymentPage()
                                 )
                             );
                           },
                         ),
                     )
                 ),
               ]
           ),
           SizedBox(height: 15.0),
           Divider(
             color: Colors.black,
           ),
           Row(
               children: <Widget>[
                 new Expanded (
                     flex:1,
                     child : Padding(
                       padding: const EdgeInsets.only(left:0 , right:0),
                       child: InkWell(
                         child: Container(
                           child: Column(
                             children: <Widget>[
                               FittedBox(fit:BoxFit.fitWidth,
                                   child:
                                   Radio(
                                     value: '',
                                     groupValue: '',
                                   ),
                               ),
                             ],
                           ),
                         ),
                         onTap: (){
                           Navigator.of(context).pushReplacement(
                               MaterialPageRoute(
                                   builder: (BuildContext context) => ShippingAddressPage()
                               )
                           );
                         },
                       ),
                     )
                 ),
                 new Expanded (
                 flex:3,
                 child : Padding(
                   padding: const EdgeInsets.only(left:0 , right:0),
                     child: InkWell(
                   child: Container(
                     child: Column(
                       children: <Widget>[
                         FittedBox(fit:BoxFit.fitWidth,
                             child:
                             Text(
                               'Ship To',
                               style: TextStyle(
                                 color: Colors.grey,
                                 fontSize: 15,
                               ),
                             )
                         ),
                       ],
                     ),
                   ),
                       onTap: (){
                         Navigator.of(context).pushReplacement(
                             MaterialPageRoute(
                                 builder: (BuildContext context) => ShippingAddressPage()
                             )
                         );
                       },
                     ),
                 )
             ),
                 new Expanded (
                     flex:6,
                     child : Padding(
                       padding: const EdgeInsets.only(left:0 , right:0),
                         child: InkWell(
                       child: Container(
                         child: Column(
                           children: <Widget>[
                             FittedBox(fit:BoxFit.fitWidth,
                                 child:
                                 Text(
                                   'Add Address +',
                                   style: TextStyle(
                                     fontSize: 15,
                                   ),
                                 )
                             ),
                           ],
                         ),
                       ),
                           onTap: (){
                             Navigator.of(context).pushReplacement(
                                 MaterialPageRoute(
                                     builder: (BuildContext context) => ShippingAddressPage()
                                 )
                             );
                           },
                         ),
                     )
                 ),
             ]
           ),
           SizedBox(height: 15.0),
           Row(
               //mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                 new Expanded (
                       child: Container(
                         decoration: const BoxDecoration(
                           border: Border(
                             top: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                             left: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                             right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                             bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                           ),
                         ),
                         child: Column(
                           children: <Widget>[
                             FittedBox(
                               child:
                               Text(
                                 'Standard 120 QAR',
                                 style: TextStyle(
                                   fontFamily: 'Cairo',
                                   fontSize: 15,
                                   color: const Color(0xff000000),
                                   fontWeight: FontWeight.w400,
                                 ),
                                   textAlign: TextAlign.left,
                               ),
                             ),
                             FittedBox(
                               child:
                               Text(
                                 'Dummy text',
                                 style: TextStyle(
                                   fontFamily: 'Cairo',
                                   fontSize: 15,
                                   color: const Color(0xff000000),
                                   fontWeight: FontWeight.w300,
                                 ),
                                 textAlign: TextAlign.left,
                               ),
                             ),


                           ],
                         ),
                       ),
                 ), //

               ],
             ),
           SizedBox(height: 15.0),
           Row(
               children: <Widget>[
                 new Expanded (
                     flex:1,
                     child : Padding(
                       padding: const EdgeInsets.only(left:0 , right:0),
                       child: InkWell(
                         child: Container(
                           child: Column(
                             children: <Widget>[
                               FittedBox(fit:BoxFit.fitWidth,
                                 child:
                                 Radio(
                                   value: '',
                                   groupValue: '',
                                 ),
                               ),
                             ],
                           ),
                         ),
                         onTap: (){
                           Navigator.of(context).pushReplacement(
                               MaterialPageRoute(
                                   builder: (BuildContext context) => ShippingAddressPage()
                               )
                           );
                         },
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
                                   'Store',
                                   style: TextStyle(
                                     fontSize: 15,
                                     color: Colors.grey,
                                     fontWeight: FontWeight.w200,
                                   ),
                                 )
                             ),
                           ],
                         ),
                       ),
                     )
                 ),
                 new Expanded (
                     flex:6,
                     child : Padding(
                       padding: const EdgeInsets.only(left:0 , right:0),
                       child: Container(
                         child: Column(
                           children: <Widget>[
                             FittedBox(fit:BoxFit.fitWidth,
                                 child:
                                 Text(
                                   'Put into Stroge',
                                   style: TextStyle(
                                     fontSize: 15,
                                   ),
                                 )
                             ),
                           ],
                         ),
                       ),
                     )
                 ),
               ]
           ),
           Divider(
             color: Colors.black,
           ),
           Row(
               children: <Widget>[
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
                                   'SUBTOTAL',
                                   style: TextStyle(
                                     color: Colors.grey,
                                     fontSize: 15,
                                   ),
                                 )
                             ),
                           ],
                         ),
                       ),
                     )
                 ),
                 new Expanded (
                     flex:4,
                     child : Padding(
                       padding: const EdgeInsets.only(left:0 , right:0),
                       child: Container(
                         child: Column(
                           children: <Widget>[
                             FittedBox(fit:BoxFit.fitWidth,
                                 child:
                                 Text(
                                   '910 QAR',
                                   style: TextStyle(
                                     fontSize: 15,
                                   ),
                                 )
                             ),
                           ],
                         ),
                       ),
                     )
                 ),
               ]
           ),
           SizedBox(height: 15.0),
           Row(
               children: <Widget>[
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
                                   'TOTAL',
                                   style: TextStyle(
                                     fontSize: 15,
                                     color: Colors.grey,
                                   ),
                                 )
                             ),
                           ],
                         ),
                       ),
                     )
                 ),
                 new Expanded (
                     flex:4,
                     child : Padding(
                       padding: const EdgeInsets.only(left:0 , right:0),
                       child: Container(
                         child: Column(
                           children: <Widget>[
                             FittedBox(fit:BoxFit.fitWidth,
                                 child:
                                 Text(
                                   '960 QAR',
                                   style: TextStyle(
                                     fontSize: 15,
                                   ),
                                 )
                             ),
                           ],
                         ),
                       ),
                     )
                 ),
               ]
           ),
           SizedBox(height: 10.0),
           FittedBox(fit:BoxFit.fitWidth,
               child: FlatButton(
                 onPressed: () {},
                   child: Row(
                   children: <Widget>[
                  Icon(Icons.arrow_forward_ios),
                     Text(' SWIPE TO PLACE ORDER ' ,  style: TextStyle(fontSize: 20 )),
                   ],
                   ),
                 shape: RoundedRectangleBorder(side: BorderSide(
                     color: Colors.black,
                     width: 1,
                     style: BorderStyle.solid
                 ), borderRadius: BorderRadius.circular(2)),
               )
           ),
         ],
       ),

    ),


     );


  }

  Widget _header() {
    return AppBar(
      backgroundColor: Colors.white,
        title: const Text('Checkout' , style: TextStyle(fontSize: 25, fontFamily: 'Cairo' , color: const Color(0xff000000))),
    leading: IconButton(
    tooltip: 'Checkout',
    icon: const Icon(Icons.arrow_back),
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
                    _CheckoutWidget(),
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
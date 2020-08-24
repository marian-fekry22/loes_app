import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loes_app/Edit/Policy.dart';
import 'package:loes_app/model/Orders.dart';
import 'package:loes_app/model/dbhelper.dart';
import 'package:loes_app/model/productDetails.dart';
import 'package:connectivity/connectivity.dart';
import 'dart:async';
import 'dart:convert';
import 'Payment.dart';
import 'ShippingAddress.dart';
import 'Widget/BottomMenu.dart';
import 'package:shared_preferences/shared_preferences.dart';
class CheckoutPage extends StatefulWidget {

//  String product_Name;
//  String product_image;
//  String product_size;
//  String product_color;
//  String product_All_price;
//  bool is_favourite;
//  int product_id;

  CheckoutPage({Key key, this.title,
//    @required this.product_image,
//    @required this.product_id,
//    @required this.product_Name,@required this.product_size,
//    @required this.product_color,@required this.product_All_price,
//    @required this.is_favourite,

  }) : super(key: key);

  final String title;

  @override
  _CheckoutPageState createState() => _CheckoutPageState(
//      product_id: product_id,is_favourite: is_favourite,
//  product_All_price: product_All_price,product_color: product_color,product_image: product_image,product_Name: product_Name
//  ,product_size: product_size
  );
}


class _CheckoutPageState extends State<CheckoutPage> {
  bool connection;

  int product_id;
  String product_Name;
  String product_image;
  String product_size;
  String product_color;
  String product_All_price;
  bool is_favourite;

  String city;
  String street;
  String building_no;
  String f_name='el';
  String l_name='el';
  String phone='011111';
  String email='el@gmil';

List<String> orders_products_ids;
  List<dynamic> orders_data=[];

  DbHelper helper;
  var  ordersdata;

  int all_products_Prices=0;

  Future<Map> futuredata;

  Future<new_order> futureNewOrder;

  int radio_value=0;

  String paymentmethod='';
  String address='';
  String storage='';

  var userid;
  @override
  void initState() {
    super.initState();
    helper = DbHelper();
    check_internet();

  }

  check_internet()async{
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        ChangeValues(true);

      } else {
        ChangeValues(false);

      }
    });


  }
  void ChangeValues(bool connected ){
    if(connected){
      setState(() {
        connection=true;
        print('connected');
      });
    }else{
      print('connected');
      setState(() {
        connection=false;
        showInSnackBar();
      });
    }
  }

Future<String> getUserId()async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
   prefs = await SharedPreferences.getInstance();
  String userId =prefs.getString('userId');

  if(userId!=null&& userId!=''){
    return userId;
  }


  return 0.toString();
}

  Widget _CheckoutWidget({@required orders}) {
     return Container(
       padding: EdgeInsets.symmetric(horizontal: 5),
       child: Container(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[

     retrun_Orders(data: orders),
           SizedBox(height: 15.0),
           Divider(
             color: Colors.black,
           ),
         InkWell(
           onTap: (){
//             print('rrrrrrrrrrrrrrrr $all_products_Prices');
             Navigator.of(context).push(
                 MaterialPageRoute(
                     builder: (BuildContext context) => Policy()
                 )
             );

           },
           child: FittedBox(fit:BoxFit.fitWidth,
             child:
             Text(
               'View out purchase & Return Policy',
               style: TextStyle(
                 decoration: TextDecoration.underline,
                 fontSize: 15,
               ),
             )
           ),
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
//                          Navigator.of(context).push(
//                              MaterialPageRoute(
//                                  builder: (BuildContext context) => PaymentPage()
//                              )
//                          );
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
                                   'Add Payment Method +\n $paymentmethod',
                                   style: TextStyle(
                                     fontSize: 15,
                                   ),
                                 )
                             ),
                           ],
                         ),
                       ),
                           onTap: ()async{
                             var  result=await Navigator.of(context).push(
                                 MaterialPageRoute(
                                     builder: (BuildContext context) => PaymentPage()
                                 )
                             );
                             setState(() {
                               paymentmethod=result.toString();

                             });
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
                       child: FittedBox(fit:BoxFit.fitWidth,
                           child:
                           Radio(
                             value: 0,
                             activeColor: Colors.black,
                             groupValue: radio_value,
                             onChanged: (v){
                               setState(() {
                                 storage='';
                                 radio_value=v;
                               });
                             },
                           ),
                       ),
                     )
                 ),
                 new Expanded (
                 flex:3,
                 child : Padding(
                   padding: const EdgeInsets.only(left:0 , right:0),
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
                                   'Add Address + \n $address',
                                   style: TextStyle(
                                     fontSize: 15,
                                   ),
                                 )
                             ),
                           ],
                         ),
                       ),
                           onTap: ()async{
                         if(radio_value==0){
                           Map  result=await Navigator.of(context).push(
                               MaterialPageRoute(
                                   builder: (BuildContext context) => ShippingAddressPage()
                               )
                           );
                           setState(() {
                             city=result['city'];
                             street=result['street'];
                             building_no=result['building_no'];
                             address='$city \n $street  $building_no';
                             if(result.length==0)return address='';
                           });

                         }

                           },
                         ),
                     )
                 ),
             ]
           ),
           SizedBox(height: 15.0),
           InkWell(
             onTap: (){
               setState(() {
                 all_products_Prices+=0;
               });
             },
             child: Row(
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
           ),
           SizedBox(height: 15.0),
//           Row(
//               children: <Widget>[
//                 new Expanded (
//                     flex:1,
//                     child : Padding(
//                       padding: const EdgeInsets.only(left:0 , right:0),
//                       child: Container(
//                         child: Column(
//                           children: <Widget>[
//                             FittedBox(fit:BoxFit.fitWidth,
//                               child:
//                               Radio(
//                                 value: 1,
//                                 activeColor: Colors.black,
//                                 groupValue: radio_value,
//                                 onChanged: (v){
//                                   setState(() {
//                                     address='';
//                                     radio_value=v;
//                                   });
//                                 },
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     )
//                 ),
//                 new Expanded (
//                     flex:3,
//                     child : Padding(
//                       padding: const EdgeInsets.only(left:0 , right:0),
//                       child: Container(
//                         child: Column(
//                           children: <Widget>[
//                             FittedBox(fit:BoxFit.fitWidth,
//                                 child:
//                                 Text(
//                                   'Store',
//                                   style: TextStyle(
//                                     fontSize: 15,
//                                     color: Colors.grey,
//                                     fontWeight: FontWeight.w200,
//                                   ),
//                                 )
//                             ),
//                           ],
//                         ),
//                       ),
//                     )
//                 ),
//                 new Expanded (
//                     flex:6,
//                     child : Padding(
//                       padding: const EdgeInsets.only(left:0 , right:0),
//                       child: InkWell(
//                         onTap: ()async{
//                           if(radio_value==1){
//                             var  result=await Navigator.of(context).push(
//                                 MaterialPageRoute(
//                                     builder: (BuildContext context) => ShippingAddressPage()
//                                 )
//                             );
//                             setState(() {
//                               if(storage==null)return storage='';
//                               storage=result.toString();
//                             });
//                           }
//
//
//                         },
//                         child: Column(
//                           children: <Widget>[
//                             FittedBox(fit:BoxFit.fitWidth,
//                                 child:
//                                 Text(
//                                   'Put into Stroge \n$storage',
//                                   style: TextStyle(
//                                     fontSize: 15,
//                                   ),
//                                 )
//                             ),
//                           ],
//                         ),
//                       ),
//                     )
//                 ),
//               ]
//           ),
//           Divider(
//             color: Colors.black,
//           ),
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
                                   '$all_products_Prices QAR',
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
                                   '${all_products_Prices+120} QAR',
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

                 onPressed: () {

//                   print(orders_data.length);
                   if(
//                   city==null|| city==''||
//                       street==null|| street==''||
//                       building_no==null|| building_no==''||
                   address==null|| address==''||
                       paymentmethod==null|| paymentmethod==''){
                     showInSnackBar();
                   }else{
//                     List<Map> Orders=[];
                     for(int i=0;i<orders_data.length;i++){


                       addOrderApi(i.toString() , orders_data[i]['product_id'] , f_name ,  l_name , phone , email , city , street , building_no  ,  paymentmethod);

                       //print(Orders[item]['building_no'].toString());

                     }

                   }


                 },
               )
           ),
         ],
       ),

    ),


     );


  }

  return_neworder(){

    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      child: (futureNewOrder == null)
          ?Text('no data')
          : FutureBuilder<new_order>(
        future: futureNewOrder,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data.l_name);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          return CircularProgressIndicator();
        },
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

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar :BottomMenu(),
      backgroundColor: Colors.white,
      body: (connection)?FutureBuilder(
        future: helper.allorders(),
        builder: (context, AsyncSnapshot snapshot){

          if(!snapshot.hasData){
            return Center(child: CircularProgressIndicator(),);
          }else{
            print(snapshot.data.length);

              ordersdata  =snapshot.data;


            return Container(
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

                          _CheckoutWidget(orders: ordersdata)

                        ],
                      ),
                    ),
                  ),
//                        Positioned(top: 40, left: 0, child: _backButton()),
                ],
              ),
            );
          }
        },
      ):null,

    );
  }




  showInSnackBar() {
    return _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text('enter Address And payment'),
          action: SnackBarAction(
            label: '',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        )
    );
  }

retrun_Orders({@required var data}){

    return (data.length>0)?
    Container(
      height: 200,
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder:  (context, i){
            Orders order = Orders.fromMap(data[i]);
            orders_data=[];

//            orders_products_ids.add('${order.proId.toString()}');
            all_products_Prices=0;
              for(int i=0;i<data.length;i++){
                Orders order = Orders.fromMap(data[i]);
                all_products_Prices+=order.price;
                orders_data.add({
                  'product_id': order.proId,
                  'product_id': order.price.toString(),
                  'product_id': order.proImage,
                  'product_id': order.prosize,
                  'product_id': order.procolor,
                  'product_id': order.proName,
                  'client_id ': userid,
                  'f_name': f_name,
                  'l_name': l_name,
                  'phone': phone,
                  'email': email,
                  'city': city,
                  'zone': street,
                  'street': street,
                  'building_no': building_no,
                  'notes': 'no',
                  'payment_done': paymentmethod,
                });
              }



            print('$all_products_Prices befor delete');
            print(all_products_Prices);
            print('3'*100);

            for(var item in orders_data){
              print(item.toString());
            }


            return  Container(
              color: Colors.black12,
              margin: EdgeInsets.only(bottom: 5),
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
                              Image.network(order.proImage.toString() ,  height:MediaQuery.of(context).size.height * 0.20),

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
                                  '${order.proName}',
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
                                        children : [Text('${order.prosize} UK')],
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
                                        children : [Text('${order.prosize}')],
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
                                              '${order.price} QAR',
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
                                icon:  Icon(Icons.favorite , color:  (is_favourite == true ? Colors.red : Colors.white) ),
                              ),
                              IconButton(

                                tooltip: 'wants',
                                color: Colors.white,
                                icon:  Icon(Icons.indeterminate_check_box ,  color: Colors.white ),
                                onPressed: (){
                                  print(' after delete');
                                  setState(() {

                                    all_products_Prices=all_products_Prices-order.price;
                                    helper.deleteorder(order.id);
                                  });
                                  print('$all_products_Prices ');
                                },
                              ),

                            ],
                          ),
                        ),
                      )
                  ),
                ],
              ),
            );


          }
      )
    ):Text('');
}


  Future<Map> fetch_DiscoverData_index() async {
    final response = await http.get('https://itloes.com/m/api/myWishlist?client_id=${userid}');

    List wishlist_names=[];
    if (response.statusCode == 200) {

      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      for(var item in parsed){
        wishlist_names.add(item['name']);
      }
      if(wishlist_names.contains(product_Name)){
        setState(() {
          is_favourite=true;
        });

      }
      return parsed[0];
    } else {

      throw Exception('Failed to load ');
    }
  }

  Map map={'orders':{
    'product_id': '1',
    'client_id ': '2',
    'f_name': 'f_name',
    'l_name': 'f_name',
    'phone': 'f_name',
    'email': 'f_name',
    'city': 'f_name',
    'zone': 'f_name',
    'street': 'f_name',
    'building_no': 'f_name',
    'notes': 'f_name',
    'payment_done': 'f_name',
  }};

  Future<new_order> createNewOrder({
   @required String product_id,
   @required String client_id,
   @required String f_name,
   @required String l_name,
   @required String phone,
    @required String email,
    @required  String city,
    @required  String zone,
    @required  String street,
    // ignore: non_constant_identifier_names
    @required  String building_no,
    @required  String notes,
    // ignore: non_constant_identifier_names
    @required  String payment_done,

  } ) async {
    final http.Response response = await http.post(
      'https://itloes.com/m/api/newOrder?client_id=${1}',
//      headers: <String, String>{
//        'Content-Type': 'application/json; charset=UTF-8',
//      },
      body:
      jsonEncode(
          <String, String>{
//        'Orders[product_id][0]': '1',
//        'Orders[client_id][0] ': '2',
//        'Orders[f_name][0]': 'f_name',
//        'Orders[l_name][0]': 'f_name',
//        'Orders[phone][0]': 'f_name',
//        'Orders[email][0]': 'f_name',
//        'Orders[city][0]': 'f_name',
//        'Orders[zone][0]': 'f_name',
//        'Orders[street][0]': 'f_name',
//        'Orders[building_no][0]': 'f_name',
//        'Orders[notes][0]': 'f_name',
//        'Orders[payment_done][0]': 'f_name',
      }
      ),





    );

    if (response.statusCode == 201) {
      print(response.body.toString());
      return new_order.fromJson(json.decode(response.body));

    } else {
      throw Exception('Failed to create .');
    }
  }


  Future<void> addOrderApi(item , product_id , f_name ,  l_name , phone , email , city , street , building_no
      ,  paymentmethod) async {
    final prefs = await SharedPreferences.getInstance();
//    String userId =prefs.getString('userId');
    String userId ='3';
//    String email =prefs.getString('userEmail');
//    String userName =prefs.getString('userEmail');


    var addOrderBody= {
      'Orders[product_id][0]': product_id, 'Orders[client_id][0]': userId,
      'Orders[f_name][0]': f_name, 'Orders[l_name][0]': l_name,
      'Orders[phone][0]': phone, 'Orders[email][0]': email,
      'Orders[city][0]': city, 'Orders[zone][0]': street,
      'Orders[street][0]': street, 'Orders[building_no][0]': building_no,
      'Orders[notes][0]': 'notes','Orders[payment_done][0]': '0'
    };
    var response = await http.post('https://itloes.com/m/api/newOrder?client_id='+userId ,body:addOrderBody);
    if (response.statusCode == 200) {
      final res = json.decode(response.body);
      print(res['result']['message']);
//      if(res['result']['message']=='Thank you .. your request has sent successfully ..'){
//        for(int i=0;i<orders_data.length;i++) {
//        String proName=   orders_data[i]['proName'];
//        helper.deleteorder_ByName(proName);
//        }
//
//
//      }

    }


  }


}



class new_order {

  final String product_id;
  final String client_id;
  final String f_name;
  final String l_name;
  final String phone;
  final String email;
  final String city;
  final String zone;
  final String street;
  final String building_no;
  final String notes;
  final String payment_done;

  new_order({
    this.product_id,
    this.client_id,
    this.f_name,
    this.l_name,
    this.phone,
    this.email,
    this.city,
    this.zone,
    this.street,
    this.building_no,
    this.notes,
    this.payment_done,
  });

  factory new_order.fromJson(Map<String, dynamic> json) {
    return new_order(
      product_id: json['product_id'],
      client_id: json['client_id'],
      f_name: json['f_name'],
      l_name: json['l_name'],
      phone: json['phone'],
      email: json['email'],
      city: json['city'],
      zone: json['zone'],
      street: json['street'],
      building_no: json['building_no'],
      notes: json['notes'],
      payment_done: json['payment_done'],

    );
  }
}
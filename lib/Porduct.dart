import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_multi_carousel/carousel.dart';
import 'package:loes_app/model/productDetails.dart';
import 'Contants/MyRaisedButton.dart';
import 'Contants/MyText.dart';
import 'DetailScreen.dart';
import 'Checkout.dart';

class Product extends StatefulWidget {
  int product_id;
  Product({@required this.product_id});
  @override
  _ProductState createState() => _ProductState(id: product_id);
}

class _ProductState extends State<Product> {

  int product_id=0;
  int id;
  _ProductState({@required this.id});

  static const text2_color = Color(0xfff03cc0);
  List<String> _Sizes_data = ['40', '41', '23', '43'];
  String _selected_size;

  List<String> _Colors_data = ['red', 'blue', 'white'];
  String _selected_Colors;

  bool faourite = true;
  List<String> _address_data = [
    'Brand',
    'Releasd Date',
    'NickName',
    'Color' 'Main Color',
    'ColorAway',
    'designer'
  ];
  List<String> _data = [
    'Brand name',
    '10/8/2020',
    'Tokyo',
    'Cv 200',
    'Gray,White',
    'Cilver',
    'peter Moore'
  ];
  var _images_list=['assets/images/shose1.jpg','assets/images/shose2.png','assets/images/shose3.png','assets/images/shose4.png',
    'assets/images/shose1.jpg','assets/images/shose2.png','assets/images/shose3.png','assets/images/shose4.png'];
  var _price_list=['255 \$','93 \$','300 \$','93 \$',
    '255 \$','93 \$','300 \$','93 \$'];
  var _description_list=['all Jordan  1 highh zom','Description all Jordan  1 highh zom',
    'all Jordan  1 highh zom','all Jordan  1 highh zom',
    'all Jordan  1 highh zom','Description all Jordan  1 highh zom',
    'all Jordan  1 highh zom','all Jordan  1 highh zom'];

  var data_Us_Sizes = ['All','US1',
    'Us 2','US4',
    'Us6','US1',
    'All','US1',
    'Us6','US1',
    'All','US1',
    'Us 2','US4',
    'Us6','US1',
    'All','US1',
    'Us6','US1'];
  var data_Us_Sizes_prices = [ '290 QAR','290 QAR',
    '290 QAR','290 QAR', '290 QAR','290 QAR', '290 QAR','290 QAR', '290 QAR','290 QAR','290 QAR','290 QAR',
    '290 QAR','290 QAR', '290 QAR','290 QAR', '290 QAR','290 QAR', '290 QAR','290 QAR'];

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
//    var connectivityResult = await (Connectivity().checkConnectivity());
//    if (connectivityResult == ConnectivityResult.none) {
//      print('no internet ????????????????????????????????????????????????????????????????????????????????????????????????');
//    }
//  else if (connectivityResult == ConnectivityResult.wifi) {
//    // I am connected to a wifi network.
//      print(' internet ????????????????????????????????????????????????????????????????????????????????????????????????');
//  }
//    else    print(' internet ????????????????????????????????????????????????????????????????????????????????????????????????');

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
      // If the server did return a 200 OK response,
      // then parse the JSON.
//      print('${response.body}+lllllllllllllllllllllllllllllllllllllllllllllllllllll');
//      final parsed=  jsonDecode(response.body).cast<Map<String, dynamic>>();
//      print(parsed['details']['brand']);
      return productDetails.fromJson(json.decode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.home,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: <Widget>[
          Container(
            width: 70,
            height: 10,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child:
            MyRaisedButton(child: MyText(title: 'Own',),
            button_color: Colors.white,
            border_color: Colors.black,
              onpressed: (){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (BuildContext context) => CheckoutPage(product_id: product_id,)
                    )
                );
              },
            )

//            RaisedButton(
//              color: Colors.white,
//              onPressed: () {},
//              shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(5),
//                  side: BorderSide(color: Colors.black)),
//              child: Text('Own'),
//            ),
          )
        ],
      ),


        body:(connection)?FutureBuilder<productDetails>(
          future: futuredata,
          builder: (context, snapshot) {
            if (snapshot.hasData) {


               List product_images=snapshot.data.detailss[product_id]['image'].toString().split(',').toList();
               List product_sizes=snapshot.data.detailss[product_id]['sizes'].toString().split(',').toList();
               List product_colors=snapshot.data.detailss[product_id]['colorWay'].toString().split(',').toList();

                   if(snapshot.data.detailss[product_id]['is_offered'].toString()=='yes'){
                     faourite=true;
                   }else faourite= false;


              return ListView(children: <Widget>[

                Container(

//    width: MediaQuery.of(context).size.width,
//    height: MediaQuery.of(context).size.height*.30,
                  child: Carousel(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .30,
                      initialPage: 0,
                      allowWrap: true,
                      type: Types.slideSwiper,
                      onCarouselTap: (i) {
                        print("onTap $i");
                      },
                      indicatorType: IndicatorTypes.bar,
                      indicatorBackgroundColor: Colors.white.withOpacity(.2),
                      activeIndicatorColor: Colors.black,
                      unActiveIndicatorColor: Colors.black26,
                      showIndicator: true,
                      arrowColor: Colors.black,
                      axis: Axis.horizontal,
                      showArrow: false,
                      children: List.generate(
                          product_images.length,
                              (i) => Container(
                              color: Colors.white,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(bottom: 30),
                                color: Colors.white.withOpacity((i + 1) / 7),
//                                child: Image.asset(_images_list[i],fit: BoxFit.contain,),
                                child: Image.network('${product_images[i]}',fit: BoxFit.contain,),

                              )
                          )
                      )
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      MyText(title: '${snapshot.data.detailss[product_id]['price']}'+' QAR',size: 15,fontWeight: FontWeight.bold,),

                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: DropdownButton(
                              // isDense: true,
                              isExpanded: false,
                              icon: Icon(Icons.arrow_drop_down),
                              //  focusColor: Colors.blue,
                              hint: Padding(
                                padding: const EdgeInsets.only(right: 10.0, left: 10),
                                child:  MyText(title: 'Size',),
                              ),
                              //text shown on the button (optional)
                              elevation: 16,
                              items: product_sizes.map((val) => DropdownMenuItem(
                                value: val,
                                child: Text(val),
                              )).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _selected_size = value;
                                });
                              },
                              value: _selected_size,
                              //  value: selected_size,
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
//                    width: 100.0,
//                    height: 50.0,
                            // padding: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              // border: Border.all(color: Colors.black)
                            ),
                            child: DropdownButton(
                              // isDense: true,
                              isExpanded: false,
                              icon: Icon(Icons.arrow_drop_down),
                              //  focusColor: Colors.blue,
                              hint: Padding(
                                padding: const EdgeInsets.only(right: 10.0, left: 10),
                                child: MyText(title: 'Colors',),
                              ),
                              //text shown on the button (optional)
                              elevation: 16,
                              items: product_colors.map((val) => DropdownMenuItem(
                                value: val,
                                child: Text(val),
                              )).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _selected_Colors = value;
                                });
                              },
                              value: _selected_Colors,
                              //  value: selected_size,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                faourite = !faourite;
                              });
                              // print(faourite.toString());
                            },
                            icon: (Icon(
                              Icons.favorite_border,
                              color: (faourite == true ? Colors.red : Colors.black),
                            )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                      child:MyRaisedButton(child: MyText(title:'Newly Released' ,colorr: Colors.white,),
                        // border_color:Colors.black ,
                        border_size: 5,
                        button_color: Colors.purpleAccent,
                        onpressed: (){
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) => CheckoutPage(product_id: product_id,)
                              )
                          );
                        },

                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child:MyText(title:  '${snapshot.data.detailss[product_id]['category']}'.toUpperCase(),
                      alien: TextAlign.center,
                      size: 20,fontWeight: FontWeight.bold,
                    ),

                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Divider(
                    color: Colors.black26.withOpacity(.1),
                    height: 3,
                    thickness:3,
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(5),
                    //padding: EdgeInsets.symmetric(horizontal: 30),
                    height: 100,
                    child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                        return_Detailes_listview('Brand',  '${snapshot.data.detailss[product_id]['brand']}'),
                        return_Detailes_listview('Released Date',  '${snapshot.data.detailss[product_id]['release_date']}'),
                        return_Detailes_listview('nick Name',  '${snapshot.data.detailss[product_id]['nickname']}'),
                        return_Detailes_listview('Main Color',  '${snapshot.data.detailss[product_id]['main_color']}'),
                        return_Detailes_listview('color Way',  '${snapshot.data.detailss[product_id]['colorWay']}'),
                        return_Detailes_listview('Designer',  '${snapshot.data.detailss[product_id]['designer']}'),

                        ],
                    )
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Divider(
                    color: Colors.black26,
                    height: 1,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyText(title: 'Product Info',size: 15,fontWeight: FontWeight.bold,),

                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MyText(title: '${snapshot.data.detailss[product_id]['description']}'
                    ,size: 14,),

                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  color: Colors.black,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[


                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: FlatButton(
                          onPressed: () {},
                          child: Column(children: <Widget>[
                            MyText(title: 'OFFER', colorr: Colors.white,),
                            MyText(title: '${snapshot.data.detailss[product_id]['offer_price']}'+' QAR',
                              colorr: text2_color, size: 10,),


                          ],),),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: FlatButton(
                          onPressed: () {

                          },
                          child: Column(children: <Widget>[
                            MyText(title: 'BUY NOW', colorr: Colors.white,),
                            MyText(title: '${snapshot.data.detailss[product_id]['offer_price']}'+' QAR', colorr: text2_color, size: 10,),

                          ],),),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              // visible_sizes=!visible_sizes;
                              return  _presentBottomSheet(context);
                            });

                          },
                          child: Column(children: <Widget>[
                            MyText(title: 'Size', colorr: Colors.white,),
                            MyText(title: '45 UK',
                              colorr: text2_color,
                              size: 10,
                              decoration: TextDecoration.underline,),

                          ],),),
                      ),
                    ],),
                ),


              ]);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return Center(child: CircularProgressIndicator());
          },
        ):null
    );
  }
  void _presentBottomSheet(BuildContext context) {
    showModalBottomSheet(

      context: context,
      builder: (context) =>    Container(
        height: 600,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: MyText(title:'Select U.S.Mens.Size',size: 18,fontWeight: FontWeight.w300,),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 300,
                child:
                GridView.count(
                  crossAxisCount: 4,
                  // Generate 100 Widgets that display their index in the List
                  children: List.generate(data_Us_Sizes.length, (index) {
                    return Container(

                      width: 50,
                      height: 50,
//                  decoration: BoxDecoration(
//
//                      border: Border.all(color: Colors.black26)),

//                child: Container(
//                  color: Colors.white,
//                    child: Image.asset(_images_list[index],fit: BoxFit.fill,)),
                      child: Card(
                        child: InkWell(
                          onTap: () {
                          },
                          child: (
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  MyText(title: data_Us_Sizes[index],colorr: Colors.black,),
                                  MyText(title: data_Us_Sizes_prices[index],colorr: text2_color,fontWeight: FontWeight.bold,)
                                ],)
                          ),
                        ),
                      ),

                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
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


  return_Detailes_listview(@required title,@required value){
    return  Container(

      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.black)
          border: Border(right: BorderSide( //                   <--- left side
            color: Colors.black26,
            width: 1.0,
          ),)
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            MyText(title: '$title',colorr: Colors.black26,fontWeight: FontWeight.bold,),
            MyText(title:  '$value',decoration: TextDecoration.underline,),
          ],
        ),
      ),

    );
  }

}

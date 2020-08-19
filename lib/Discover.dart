import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loes_app/Contants/MyText.dart';
import 'package:loes_app/model/Discover_Index.dart';
import 'dart:async';
import 'dart:convert';
import 'Widget/BottomMenu.dart';
//import 'package:connectivity/connectivity.dart';

class DiscoverPage extends StatefulWidget {
  DiscoverPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}


class _DiscoverPageState extends State<DiscoverPage> {

  Future<Discover_Index> futuredata;
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

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,

//      bottomNavigationBar :BottomMenu(),

      backgroundColor: Colors.white,
//      body:(connection)?FutureBuilder<Discover_Index>(
//        future: futuredata,
//        builder: (context, snapshot) {
////          print('${snapshot.data.section1['image'].toString()}+>>>image >>>>>>>>>>>>>>>');
//
//          if (snapshot.hasData) {
//            return Container(
//              height: height,
//              child: Stack(
//                children: <Widget>[
//                  Container(
//                    margin: EdgeInsets.only(top: 20),
//                    padding: EdgeInsets.symmetric(horizontal: 5),
//                    child: SingleChildScrollView(
//                      child: Column(
//                        crossAxisAlignment: CrossAxisAlignment.center,
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
////                    _header(),
//                          SizedBox(height: 2.0),
//
//                          return_section_name( title: 'justdropped',ontap: (){}),
//                          _discoverWidget(
//                            images_array: snapshot.data.just_dropped_products,),
//                          return_section( sectionimage: snapshot.data.section1['image'].toString()),
//
//                          SizedBox(height: 2.0),
//                          return_section_name( title: '${snapshot.data.brand_order_1.toString()}',ontap: (){}),
//                          _discoverWidget(images_array: snapshot.data.products_of_brand_order_1,),
//                          return_section( sectionimage: snapshot.data.section2['image'].toString()),
//
//                          SizedBox(height: 2.0),
//                          return_section_name( title:'${snapshot.data.brand_order_2.toString()}',ontap: (){}),
//                          _discoverWidget(
//                            images_array: snapshot.data.products_of_brand_order_2,),
//
//                          SizedBox(height: 5.0),
//                          _discoverWidget(
//                            images_array: snapshot.data.new_arrivals_products,),
//                          SizedBox(height: 5.0),
//                          return_section(sectionimage: snapshot.data.section3['image'].toString()),
//                          return_section_name( title:'${snapshot.data.brand_order_3.toString()}',ontap: (){}),
//
//                          _discoverWidget(
//                            images_array: snapshot.data.products_of_brand_order_3,),
//                          return_section(sectionimage: snapshot.data.section4['image'].toString()),
//                          SizedBox(height: 5.0),
//                          return_section_name( title:'${snapshot.data.brand_order_4.toString()}',ontap: (){}),
////                          _discoverWidget(
////                            images_array: snapshot.data.products_of_brand_order_4,),
//                          _discoverWidget(
//                            images_array: snapshot.data.trending_products,),
//                          SizedBox(height: 5.0),
//                          _discoverWidget(
//                            images_array: snapshot.data.shop_by_brand,),
//                          SizedBox(height: 5.0),
//                          _discoverWidget(
//                            images_array: snapshot.data.spaced_out_products,),
//                          SizedBox(height: 5.0),
//
//                          return_section_name(title: 'shop by product', ontap: null),
//                          _discoverWidget(
//                            images_array: snapshot.data.shop_by_product,),
//
//                        ],
//                      ),
//                    ),
//                  ),
//                  //Positioned(top: 40, left: 0, child: _backButton()),
//                ],
//              ),
//            );
//          } else if (snapshot.hasError) {
//            return Text("${snapshot.error}");
//          }
//
//          // By default, show a loading spinner.
//          return Center(child: CircularProgressIndicator());
//        },
//      ):Center(child: showInSnackBar(),)
        body:(connection)?FutureBuilder<Discover_Index>(
          future: futuredata,
          builder: (context, snapshot) {
//          print('${snapshot.data.section1['image'].toString()}+>>>image >>>>>>>>>>>>>>>');

            if (snapshot.hasData) {
              return Container(
                height: height,
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
//                    _header(),
                              SizedBox(height: 2.0),

                              return_section_name( title: 'justdropped',ontap: (){}),
                              _discoverWidget(
                                images_array: snapshot.data.just_dropped_products,),
                              return_section( sectionimage: snapshot.data.section1['image'].toString()),

                              SizedBox(height: 2.0),
                              return_section_name( title: '${snapshot.data.brand_order_1.toString()}',ontap: (){}),
                              _discoverWidget(images_array: snapshot.data.products_of_brand_order_1,),
                              return_section( sectionimage: snapshot.data.section2['image'].toString()),

                              SizedBox(height: 2.0),
                              return_section_name( title:'${snapshot.data.brand_order_2.toString()}',ontap: (){}),
                              _discoverWidget(
                                images_array: snapshot.data.products_of_brand_order_2,),

                              SizedBox(height: 5.0),
                              _discoverWidget(
                                images_array: snapshot.data.new_arrivals_products,),
                              SizedBox(height: 5.0),
                              return_section(sectionimage: snapshot.data.section3['image'].toString()),
                              return_section_name( title:'${snapshot.data.brand_order_3.toString()}',ontap: (){}),

                              _discoverWidget(
                                images_array: snapshot.data.products_of_brand_order_3,),
                              return_section(sectionimage: snapshot.data.section4['image'].toString()),
                              SizedBox(height: 5.0),
                              return_section_name( title:'${snapshot.data.brand_order_4.toString()}',ontap: (){}),
//                          _discoverWidget(
//                            images_array: snapshot.data.products_of_brand_order_4,),
                              _discoverWidget(
                                images_array: snapshot.data.trending_products,),
                              SizedBox(height: 5.0),
                              _discoverWidget(
                                images_array: snapshot.data.shop_by_brand,),
                              SizedBox(height: 5.0),
                              _discoverWidget(
                                images_array: snapshot.data.spaced_out_products,),
                              SizedBox(height: 5.0),

                              return_section_name(title: 'shop by product', ontap: null),
                              _discoverWidget(
                                images_array: snapshot.data.shop_by_product,),
                              SizedBox(height: 5.0),

                              return_section_name(title: 'Remaining brands', ontap: null),
                              _discoverWidget(
                                images_array: snapshot.data.remaining_brands_with_its_products,),

                            ],
                          ),
                        ),
                      ),
                      //Positioned(top: 40, left: 0, child: _backButton()),
                    ],
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return Center(child: CircularProgressIndicator());
          },
        ): null

    );
  }




  Future<Discover_Index> fetch_DiscoverData_index() async {
    final response = await http.get('https://itloes.com/m/api/index');

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Discover_Index.fromJson(json.decode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Widget _discoverWidget({@required List images_array}) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              //padding: EdgeInsets.symmetric(horizontal: 30),
              height: 200,
              child: ListView.builder(
//                      shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: images_array.length,
                  itemBuilder: (BuildContext context, int index) =>
                      Container(
//                            height: 150,
                        width: 150,
                        color: Colors.transparent,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        //  padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
//                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Expanded(
                              flex: 3,
                              child: Image.network(
                                images_array[index]['image'],
                                fit: BoxFit.fill,
//                                    height:200,width: 150,
                              ),

                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(

                                  padding: const EdgeInsets.all(10.0),
                                  child: MyText(title: '${images_array[index]['name']}',)

                              ),
                            ),
                          ],
                        ),
                      ))),



//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                children: <Widget>[
//                  new Expanded (
//                    flex:2,
//                    child : Padding(
//                      padding: const EdgeInsets.only(left:10 , right:10),
//                      child: Container(
//                        height: MediaQuery.of(context).size.height * 0.40,
//                        child: Column(
//                          children: <Widget>[
//                        FittedBox(fit:BoxFit.fitWidth,
//                          child:
//                          Text(
//                            'Just Dropped',
//                            style: TextStyle(
//                              fontFamily: 'Cairo',
//                              //fontSize: 15,
//                              color: const Color(0xff000000),
//                              fontWeight: FontWeight.w400,
//                            ),
//                            textAlign: TextAlign.right,
//                          ),
//                        ),
//                            Image.asset(
//                                ('assets/images/1.jpeg'),
//                              height: MediaQuery.of(context).size.height * 0.25,
//                            ),
//
//                            SizedBox(
//                              height: 10.0,
//                            ),
//                        FittedBox(fit:BoxFit.fitWidth,
//                            child :Text('aenean eu tristique'.toUpperCase(),
//                              style: TextStyle(
//                                fontFamily: 'Cairo',
//                                //fontSize: 12,
//                                color: const Color(0xff000000),
//                                //fontWeight: FontWeight.w400,
//                              ),
//                              textAlign: TextAlign.center,
//                            ),),
//                        FittedBox(fit:BoxFit.fitWidth,
//                          child:  Text('aenean eu tristique'.toUpperCase(),
//                              style: TextStyle(
//                                fontFamily: 'Cairo',
//                                fontSize: 10,
//                                color: const Color(0xff000000),
//                                fontWeight: FontWeight.w300,
//                              ),
//                              textAlign: TextAlign.center,
//                            ),),
//
//                          ],
//                        ),
//                      ),
//                    )
//                  ),
//                  new Expanded (
//                      flex:1,
//                      child : Container(
//                        height: MediaQuery.of(context).size.height * 0.30,
//                        decoration:
//                        BoxDecoration(
//                          image: DecorationImage(image: AssetImage('assets/images/2.jpeg'),fit: BoxFit.fitHeight),
//                        ),
//                      )
//                  ),
//                  new Expanded (
//                      flex:2,
//                      child : Padding(
//                        padding: const EdgeInsets.only(left:10 , right:10),
//                        child: Container(
//                          height: MediaQuery.of(context).size.height * 0.40,
//                          child: Column(
//                            children: <Widget>[
//                              FittedBox(fit:BoxFit.fitWidth,
//                                child:
//                                Text(
//                                  'Just Dropped',
//                                  style: TextStyle(
//                                    fontFamily: 'Cairo',
//                                    //fontSize: 15,
//                                    color: const Color(0xff000000),
//                                    fontWeight: FontWeight.w400,
//                                  ),
//                                  textAlign: TextAlign.right,
//                                ),
//                              ),
//                              Image.asset(
//                                'assets/images/6.jpeg',
//                                height: MediaQuery.of(context).size.height * 0.25,
//                              ),
//
//                              SizedBox(
//                                height: 10.0,
//                              ),
//                              FittedBox(fit:BoxFit.fitWidth,
//                                child :Text('aenean eu tristique'.toUpperCase(),
//                                  style: TextStyle(
//                                    fontFamily: 'Cairo',
//                                    //fontSize: 12,
//                                    color: const Color(0xff000000),
//                                    //fontWeight: FontWeight.w400,
//                                  ),
//                                  textAlign: TextAlign.center,
//                                ),),
//                              FittedBox(fit:BoxFit.fitWidth,
//                                child:  Text('aenean eu tristique'.toUpperCase(),
//                                  style: TextStyle(
//                                    fontFamily: 'Cairo',
//                                    fontSize: 10,
//                                    color: const Color(0xff000000),
//                                    fontWeight: FontWeight.w300,
//                                  ),
//                                  textAlign: TextAlign.center,
//                                ),),
//
//                            ],
//                          ),
//                        ),
//                      )
//                  ),
//
//                ],
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                children: <Widget>[
//                  new Expanded (
//                      flex:2,
//                      child : Padding(
//                        padding: const EdgeInsets.only(left:10 , right:10),
//                        child: Container(
//                          height: MediaQuery.of(context).size.height * 0.40,
//                          child: Column(
//                            children: <Widget>[
//                              FittedBox(fit:BoxFit.fitWidth,
//                                child:
//                                Text(
//                                  'Just Dropped',
//                                  style: TextStyle(
//                                    fontFamily: 'Cairo',
//                                    //fontSize: 15,
//                                    color: const Color(0xff000000),
//                                    fontWeight: FontWeight.w400,
//                                  ),
//                                  textAlign: TextAlign.right,
//                                ),
//                              ),
//                              Image.asset(
//                                'assets/images/6.jpeg',
//                                height: MediaQuery.of(context).size.height * 0.25,
//                              ),
//
//                              SizedBox(
//                                height: 10.0,
//                              ),
//                              FittedBox(fit:BoxFit.fitWidth,
//                                child :Text('aenean eu tristique'.toUpperCase(),
//                                  style: TextStyle(
//                                    fontFamily: 'Cairo',
//                                    //fontSize: 12,
//                                    color: const Color(0xff000000),
//                                    //fontWeight: FontWeight.w400,
//                                  ),
//                                  textAlign: TextAlign.center,
//                                ),),
//                              FittedBox(fit:BoxFit.fitWidth,
//                                child:  Text('aenean eu tristique'.toUpperCase(),
//                                  style: TextStyle(
//                                    fontFamily: 'Cairo',
//                                    fontSize: 10,
//                                    color: const Color(0xff000000),
//                                    fontWeight: FontWeight.w300,
//                                  ),
//                                  textAlign: TextAlign.center,
//                                ),),
//
//                            ],
//                          ),
//                        ),
//                      )
//                  ),
//                  new Expanded (
//                      flex:1,
//                      child : Container(
//                        height: MediaQuery.of(context).size.height * 0.30,
//                        decoration:
//                        BoxDecoration(
//                          image: DecorationImage(image: AssetImage('assets/images/3.jpeg'),fit: BoxFit.fitHeight),
//                        ),
//                      )
//                  ),
//                  new Expanded (
//                      flex:2,
//                      child : Padding(
//                        padding: const EdgeInsets.only(left:10 , right:10),
//                        child: Container(
//                          height: MediaQuery.of(context).size.height * 0.40,
//                          child: Column(
//                            children: <Widget>[
//                              FittedBox(fit:BoxFit.fitWidth,
//                                child:
//                                Text(
//                                  'Just Dropped',
//                                  style: TextStyle(
//                                    fontFamily: 'Cairo',
//                                    //fontSize: 15,
//                                    color: const Color(0xff000000),
//                                    fontWeight: FontWeight.w400,
//                                  ),
//                                  textAlign: TextAlign.right,
//                                ),
//                              ),
//                              Image.asset(
//                                'assets/images/1.jpeg',
//                                height: MediaQuery.of(context).size.height * 0.25,
//                              ),
//
//                              SizedBox(
//                                height: 10.0,
//                              ),
//                              FittedBox(fit:BoxFit.fitWidth,
//                                child :Text('aenean eu tristique'.toUpperCase(),
//                                  style: TextStyle(
//                                    fontFamily: 'Cairo',
//                                    //fontSize: 12,
//                                    color: const Color(0xff000000),
//                                    //fontWeight: FontWeight.w400,
//                                  ),
//                                  textAlign: TextAlign.center,
//                                ),),
//                              FittedBox(fit:BoxFit.fitWidth,
//                                child:  Text('aenean eu tristique'.toUpperCase(),
//                                  style: TextStyle(
//                                    fontFamily: 'Cairo',
//                                    fontSize: 10,
//                                    color: const Color(0xff000000),
//                                    fontWeight: FontWeight.w300,
//                                  ),
//                                  textAlign: TextAlign.center,
//                                ),),
//
//                            ],
//                          ),
//                        ),
//                      )
//                  ),
//
//                ],
//              ),


        ],
      ),

    );
  }

  Widget return_section_name({@required String title,@required Function ontap}){
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title',
            //'Just Dropped',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 20,
              color: const Color(0xff000000),
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.right,
          ),
          InkWell(
            //func
            onTap:ontap,
            child:  Text(
              'Shop All',
              style: TextStyle(
                fontFamily: 'Cairo',
                //fontSize: 15,
                color: Colors.black54,
//                        color: const Color(0xff000000),
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.right,
            ),)
        ],
      ),
    );
  }

Widget return_section({@required String sectionimage}){
    return  Container(
      width: MediaQuery.of(context).size.width ,
      height:400 ,
      decoration: BoxDecoration(
        image: DecorationImage(image:
        NetworkImage(sectionimage),

            fit:BoxFit.fill
        ),
      ),

    );
}

  Widget _header() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text('Home' , style: TextStyle(fontSize: 25, fontFamily: 'Cairo' , color: const Color(0xff000000))),
      leading: IconButton(
        tooltip: 'Discover',
        icon: const Icon(Icons.home),
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






}
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loes_app/model/Categories.dart';
import 'package:loes_app/model/Result_search_by_Categoray.dart';
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
 int product_id;
 String title;


      int page=1;
  int category_id=2;


  bool connection=false;

  Future<Map> future_Categories;
  Future<Map> futuredata;
  Future<Map> future_SearchByKeyword;

  TextEditingController _search_controller;

  void initState() {
    super.initState();
    check_internet();


  }

  check_internet()async{

    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        setState(() {
          connection=true;
          _search_controller = TextEditingController();
          future_Categories = fetch_Categories();

          Future.delayed(Duration(seconds: 2), () {
            futuredata = fetch_Result_search_by_Categoray();

          });
//          futuredata = fetch_Result_search_by_Categoray();
          //-------------------------------
          print('connected');
        });

      }
    } on SocketException catch (_) {

      setState(() {
        connection=false;
        showInSnackBar();
      });


      print('not connected');
    }

  }
  @override



  @override
  void dispose() {
//    _connectivitySubscription.cancel();
    super.dispose();
    _search_controller.dispose();
  }









  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar :BottomMenu(),
      backgroundColor: Colors.white,

        body:(connection)?
        FutureBuilder<Map>(
          future: fetch_Result_search_by_Categoray(),
          builder: (context, snapshot) {

            var list=snapshot.data['result'][0]['results'];
            if (snapshot.hasData) {
              return Container(
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
                            _discoverWidget(list),
                          ],
                        ),
                      ),
                    ),
                    //Positioned(top: 40, left: 0, child: _backButton()),
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return Center(child: Text("${snapshot.error}"));
            }

            // By default, show a loading spinner.
            return Center(child: CircularProgressIndicator());
          },
        )
            :null

    );
  }



  Future<Map> fetch_Categories() async {
    final response = await http.get('https://itloes.com/m/api/categories');
    if (response.statusCode == 200) {
      var extractedData = json.decode(response.body) as Map;
      return extractedData;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load');
    }
  }

  Future<Map> fetch_Result_search_by_Categoray() async {

    final response = await http.get('https://itloes.com/m/api/searchByCategory?category_id=$category_id&page=$page');

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      var extractedData = json.decode(response.body) as Map;
//      print('='*100);
//      print(extractedData['result'][0]['results'][0]['name']);
      return extractedData;

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<Map> fetch_Result_Search_ByKeyword(String keyword) async {

    category_id=-1;
    List data;
    final response = await http.get('https://itloes.com/m/api/searchByKeyword?kw=${title}&page=1');

    if (response.statusCode == 200) {
      var   extractedData = json.decode(response.body) as Map;
      if(extractedData['result'][0]['results']['name']!=title)
       {
        return null;
       }else{
        setState(() {

          category_id=extractedData['result'][0]['results']['id'];
          data=extractedData['result'][0]['results'];
          print(category_id);
          print(extractedData['result'][0]['results']);
          print('${extractedData['result'][0]['results']['id']}');
        });
        Show_Screen_Body_Category(data);
        print(extractedData);
        return extractedData;
      }




    } else {
//      _scaffoldKey.currentState.showSnackBar(
//          SnackBar(
//            content: Text('Check Your Internet Connection!'),
//            action: SnackBarAction(
//              label: 'Warrning',
//              onPressed: () {
//                // Some code to undo the change.
//              },
//            ),
//          )
//      );
      print('reorrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr');
//      throw Exception('Failed to load album');
    }
  }

  Widget _discoverWidget(List listcaegoey) {
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
                              onTap: (){
                                setState(() {
                                  category_id=-1;
                                });
                              },
                             onFieldSubmitted: (key){
                                if(_search_controller.text.isNotEmpty){
                                  setState(() {
                                    title=_search_controller.text;
                                    future_SearchByKeyword=  fetch_Result_Search_ByKeyword(title);
                                 category_id=0;
                                    print('category_id =$category_id keyword= $title >>>>>>>>>>>>>>>>>>>>>>>>>>>');
                                  });

                                }

                             },

                              controller: _search_controller,
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
          Show_Screen_Body_Category(listcaegoey)

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
  Show_Screen_Body_Category(List data){
  return Container(
    height: MediaQuery.of(context).size.height,
    child: GridView.count(
      padding: const EdgeInsets.all(0),
      crossAxisCount: 2,
      children: List.generate( data.length, (index) {
        return Container(
          height: 300,
          child: Padding(
            padding: const EdgeInsets.only(left:10 , right:10),
            child:    InkWell(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: FittedBox(fit:BoxFit.fitWidth,
                        child:
                        Text(
                          '${data[0]['price']} QAR',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            //fontSize: 15,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                   Expanded(
                     flex: 5,
                     child: Image.network(
                        ('${data[0]['image']}'),
                        height: MediaQuery.of(context).size.height * 0.25,fit: BoxFit.fill,
                      ),
                   ),

                    SizedBox(
                      height: 10.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: FittedBox(
                        fit:BoxFit.fitWidth,
                        child : Icon(
                          Icons.favorite_border,
                          size: 24.0,
                          color: (faourite == true ? Colors.red : Colors.black),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: FittedBox(fit:BoxFit.fitWidth,
                        child:  Text('${data[0]['name']}'.toUpperCase(),
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 14,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.center,
                        ),),
                    ),
                    Expanded(
                      flex: 1,
                      child: FittedBox(fit:BoxFit.fitWidth,
                        child:  Text('${data[0]['brand']}'.toUpperCase(),
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 10,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w200,
                          ),
                          textAlign: TextAlign.center,
                        ),),
                    ),

                  ],
                ),
              ),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (BuildContext context) => Product(product_id: data[0]['id'],)
                    )
                );
              },
            ),
          ),
        );
      }
      ),
    ),
  );

  }

  Widget __tabs(){
    return  FutureBuilder<Map>(
      future: future_Categories,
      builder: (context, snapshot) {

//        var list=snapshot.data['result'][0]['results'];
        List ResultsCategoriesList=snapshot.data['results'] ;
        if (snapshot.hasData) {
          return  Container(
              margin: EdgeInsets.all(4),
              //padding: EdgeInsets.symmetric(horizontal: 30),
              height: 50,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: ResultsCategoriesList.length,
                  itemBuilder: (BuildContext context, int index) => InkWell(
                    onTap: (){
                      setState(() {
                        category_id=ResultsCategoriesList[index]['id'];
                        print(category_id);
                      });
                    },
                    child: Container(
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
                            MyText(title: '${ResultsCategoriesList[index]['name']}',colorr: Colors.black26,fontWeight: FontWeight.bold,),
                          ],
                        ),
                      ),

                    ),
                  )));
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }

        // By default, show a loading spinner.
        return CircularProgressIndicator();
      },
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



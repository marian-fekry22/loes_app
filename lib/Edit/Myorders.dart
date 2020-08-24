import 'package:flutter/material.dart';
import 'package:loes_app/Contants/MyText.dart';
import 'package:loes_app/Porduct.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Myorders extends StatefulWidget {
  @override
  _MyordersState createState() => _MyordersState();
}

class _MyordersState extends State<Myorders> {
  final ScrollController scrollController = new ScrollController();

  Future<List> futureAllDropped;


  @override
  void initState() {
    super.initState();
    futureAllDropped = fetch_Myorders();
    super.initState();
  }


  @override
  void dispose() {
    scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        title:  Text('MY Orders' , style: TextStyle(fontSize: 25, fontFamily: 'Cairo' , color: const Color(0xff000000))),
      ),
      body: FutureBuilder<List>(
        future: futureAllDropped,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print('..'*100);
            print(snapshot.data.toString());
            print(snapshot.data[0]['product_id']);
            return Container(
              height: MediaQuery.of(context).size.height,
              child: NotificationListener(
                child: ListView.builder(
//                      shrinkWrap: true,
//            scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) =>
                        Card(
                          child: Container(
                            height: 50,
                            width: 150,
                            color: Colors.transparent,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            //  padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
//                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: MyText(title: '${index+1}',size: 20,),
                                ),


                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: MyText(title: '${snapshot.data[index]['product_name']}',),
                                ),

                              ],
                            ),
                          ),
                        )),
              ),
            );

          } else if (snapshot.hasError) {
            return Center(child: Text("No data"));
          }

          // By default, show a loading spinner.
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }



  Future<List> fetch_Myorders() async {



    List data;
//    final response = await http.get('https://itloes.com/m/api/$section?page=$pagenumber');

    final response = await http.get('https://itloes.com/m/api/myOrders?client_id=1');


    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print ('////////////////////////////////////////////////////////////////////////////////////////////');
      print (response.body);
      var extractedData = json.decode(response.body) as List;
      List parsed=extractedData[0]['results_of_orders'];
      print('='*100);
      print(parsed);

//      print(extractedData['result'][0]['results'][0]['name']);
      print ('////////////////////////////////////////////////////////////////////////////////////////////');
      print (parsed[0]['product_name']);
      return parsed;

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }


}


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loes_app/Porduct.dart';

class Show_All_ByBrand extends StatefulWidget {
  final int brand_id;
Show_All_ByBrand({@required this.brand_id}){
    print(brand_id);
  }

  @override
  _ShowAllState createState() => _ShowAllState(brand_id: this.brand_id);
}

class _ShowAllState extends State<Show_All_ByBrand> {
   int brand_id;
  _ShowAllState({@required this.brand_id});


  Future<Map> futureAllDropped;
String brandName='';
  @override
  void initState() {
    super.initState();
    futureAllDropped = fetch_ShopAll(brand_id);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Text('$brandName' , style: TextStyle(fontSize: 25, fontFamily: 'Cairo' , color: const Color(0xff000000))),
      ),
      body: FutureBuilder<Map>(
        future: futureAllDropped,
        builder: (context, snapshot) {

          if (snapshot.hasData) {

            List data=snapshot.data['result'][0]['results'];
            print(data);
            return Container(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                ),
                itemCount:data.length,
                itemBuilder: (context, index) {
                  //return Image.network(photos[index].thumbnailUrl);
                  return Container(
//                      padding: const EdgeInsets.all(10.0),
                    child: Row(
                        children: <Widget>[
                          InkWell(
                            child :  Container(
                              child: Column(
                                children: <Widget>[
//                                    FittedBox(fit:BoxFit.fitWidth,
//                                      child:
//                                      Text(
//                                        snapshot.data[index]['name'],
//                                        style: TextStyle(
//                                          fontFamily: 'Cairo',
//                                          //fontSize: 15,
//                                          color: const Color(0xff000000),
//                                          fontWeight: FontWeight.w400,
//                                        ),
//                                        textAlign: TextAlign.right,
//                                      ),
//                                    ),
                                  Image.network(
                                    (data[index]['image']),
                                    width: MediaQuery.of(context).size.width * 0.40,
                                  ),

                                  SizedBox(
                                    height: 3.0,
                                  ),
//                                    FittedBox(
//                                      fit:BoxFit.fitWidth,
//                                      child : Icon(
//                                        Icons.favorite_border,
//                                        size: 20.0,
//                                        color: (faourite == true ? Colors.red : Colors.black),
//                                      ),
//                                    ),
                                  FittedBox(fit:BoxFit.fitWidth,
                                    child:  Text(data[index]['name'].toUpperCase(),
                                      style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: 14,
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),),

                                ],
                              ),
                            ),
                            onTap: (){
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) => Product(product_id: data[index]['id'],)
                                  )
                              );
                            },
                          ),
                        ]
                    ),
                  );
                },
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




  Future<Map> fetch_ShopAll(int _id) async {


if(_id!=0)
  {
    final response = await http.get('https://itloes.com/m/api/shopByBrand?brand_id=${_id}&page=1');

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
//      print ('////////////////////////////////////////////////////////////////////////////////////////////');
//      print (response.body);

      var extractedData = json.decode(response.body) as Map;
      setState(() {
        brandName=extractedData['result'][0]['results'][0]['brand'];
      });
//      print('='*100);
      print(extractedData['result'][0]['results'][0]['name']);
      print ('////////////////////////////////////////////////////////////////////////////////////////////');
      print (extractedData);
      return extractedData;

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  }


}

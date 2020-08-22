
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:loes_app/Porduct.dart';


class ShowAll_byCategory extends StatefulWidget {

  int category_id;
  ShowAll_byCategory({@required this.category_id});
  @override
  _ShowAll_byCategoryState createState() => _ShowAll_byCategoryState(category_id: category_id);
}

class _ShowAll_byCategoryState extends State<ShowAll_byCategory> {
  int category_id;
  _ShowAll_byCategoryState({@required this.category_id});
  Future<Map> futuredata;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futuredata = fetch_Result_search_by_Categoray();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:  Text('Collection' , style: TextStyle(fontSize: 25, fontFamily: 'Cairo' , color: const Color(0xff000000))),
        ),
        body: FutureBuilder<Map>(
          future: fetch_Result_search_by_Categoray(),
          builder: (context, snapshot) {

//            List list=snapshot.data['result'][0]['results'];

            if (snapshot.hasData) {
              List data=snapshot.data['result'][0]['results'];

                 return Container(
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
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
                                    Image.network(
                                      (data[index]['image']),
                                      width: MediaQuery.of(context).size.width * 0.40,
                                    ),

                                    SizedBox(
                                      height: 3.0,
                                    ),

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
        )


    );
  }


  Future<Map> fetch_Result_search_by_Categoray() async {

    if(category_id!=0){
      final response = await http.get('https://itloes.com/m/api/searchByCategory?category_id=${2}&page=1');

      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        var extractedData = json.decode(response.body) as Map;
//      print('='*100);
      print(extractedData['result'][0]['results']);
        return extractedData;

      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Failed to load album');
      }
    }

  }


}



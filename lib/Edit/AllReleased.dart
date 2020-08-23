import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loes_app/Porduct.dart';

class AllReleased extends StatefulWidget {
  @override
  _AllReleasedState createState() => _AllReleasedState();
}

class _AllReleasedState extends State<AllReleased> {

  Future<List<dynamic>> future_AllReleased;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future_AllReleased = fetch_AllReleased();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _header(),
      body: FutureBuilder<List>(
        future: future_AllReleased,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
         var   data=snapshot.data;
//         print(';;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;');
//         print(data);
//         print(';;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;');
//         print(snapshot.data[0]['image']);
            print(data);
            print(data[0]['name']);
            return Container(
                height: MediaQuery.of(context).size.height,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(0),

                  crossAxisCount: 2,
                  children: List.generate( data.length, (index) {

                    return  Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                      ),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Product(product_id: data[0]['id'],)
                              )
                          );
                        },
                        child: Container(
                          height: 500,
//                        margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
//              color: Colors.teal[100],
                              border: Border.all(color: Colors.black12),
                              image: DecorationImage(image:
                              NetworkImage(data[0]['image'],),
                                  fit: BoxFit.fill)

                          ),
                          padding: const EdgeInsets.all(8),
                          child: Stack(
                            children: [
//                            Text('${snapshot.data.detailss[index]['release_date']}'),
//                            Image.network(data[0]['image'],height: 800,fit: BoxFit.fitHeight,),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text('${data[0]['name']}',textAlign: TextAlign.center,),

                                  )),
                            ],
                          ),

                        ),
                      ),
                    );
                  }
                  ),
                )
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

  Future<List> fetch_AllReleased() async {
    final response = await http.get('https://itloes.com/m/api/allReleased?page=1');

    if (response.statusCode == 200) {

      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      final parsed1 = parsed as List;
      return parsed1;
    } else {

      throw Exception('Failed to load album');
    }
  }

  Widget _header() {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back,color: Colors.black,),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      backgroundColor: Colors.white,
      title: const Text('AllReleased' , style: TextStyle(fontSize: 25, fontFamily: 'Cairo' , color: const Color(0xff000000))),
//      leading: IconButton(
//        tooltip: 'Discover',
//        icon: const Icon(Icons.home),
//      ),

    );
  }
}

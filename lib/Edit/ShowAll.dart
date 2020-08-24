import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loes_app/Porduct.dart';

class ShowAll extends StatefulWidget {
 final String section_name;
  ShowAll({@required this.section_name}){
    print(section_name);
  }

  @override
  _ShowAllState createState() => _ShowAllState(section_name: section_name);
}

class _ShowAllState extends State<ShowAll> {


  String section_name;
  _ShowAllState({@required this.section_name});

  final ScrollController scrollController = new ScrollController();
  int currentPageNumber=1;
  MovieLoadMoreStatus loadMoreStatus = MovieLoadMoreStatus.STABLE;
//  CancelableOperation movieOperation;


  Future<List> futureAllDropped;


  @override
  void initState() {
    super.initState();
    futureAllDropped = fetch_ShopAll(section_name,currentPageNumber);
    currentPageNumber =1;
    super.initState();
  }


  @override
  void dispose() {
    scrollController.dispose();
//    if(movieOperation != null) movieOperation.cancel();
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
        title:  Text('${section_name.toUpperCase()}' , style: TextStyle(fontSize: 25, fontFamily: 'Cairo' , color: const Color(0xff000000))),
      ),
      body: FutureBuilder<List>(
        future: futureAllDropped,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
                height: MediaQuery.of(context).size.height,
                child: NotificationListener(
                  onNotification: onNotification,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    controller: scrollController,

                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      //return Image.network(photos[index].thumbnailUrl);
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                        ),
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
                                        (snapshot.data[index]['image']),
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
                                        child:  Text(snapshot.data[index]['name'].toUpperCase(),
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
                                          builder: (BuildContext context) => Product(product_id: snapshot.data[index]['id'],)
                                      )
                                  );
                                },
                              ),
                            ]
                        ),
                      );
                    },
                  ),
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


  bool onNotification(ScrollNotification notification) {
    if (notification is ScrollUpdateNotification) {
      if (scrollController.position.maxScrollExtent > scrollController.offset &&
          scrollController.position.maxScrollExtent - scrollController.offset <=
              50) {
        if (loadMoreStatus != null &&
            loadMoreStatus == MovieLoadMoreStatus.STABLE) {
          loadMoreStatus = MovieLoadMoreStatus.LOADING;

          currentPageNumber+=1;
          Future<List> item=fetch_ShopAll(section_name, currentPageNumber);
          setState(() {
            futureAllDropped=item;
          });
          print(currentPageNumber);

//          movieOperation = CancelableOperation.fromFuture(injector
//              .movieRepository
//              .fetchMovies(currentPageNumber + 1)
//              .then((moviesObject) {
//            currentPageNumber = moviesObject.page;
            loadMoreStatus = MovieLoadMoreStatus.STABLE;
//            setState(() => movies.addAll(moviesObject.movies));
          }
        }
      }

    return true;
  }

  Future<List> fetch_ShopAll(String section,int pagenumber) async {



    List data;
    final response = await http.get('https://itloes.com/m/api/$section?page=$pagenumber');

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print ('////////////////////////////////////////////////////////////////////////////////////////////');
      print (response.body);
      var extractedData = json.decode(response.body) ;
//      print('='*100);
//      print(extractedData['result'][0]['results'][0]['name']);
      print ('////////////////////////////////////////////////////////////////////////////////////////////');
      print (extractedData[0]);
      return extractedData;

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }


}
enum MovieLoadMoreStatus { LOADING, STABLE }
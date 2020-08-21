import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Porduct.dart';
import 'Login.dart';
import 'package:shared_preferences/shared_preferences.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if(prefs.getString('userId')!='' && prefs.getString('userId') != null){
    void main() => runApp(WishListPage());
  }
  else{
    void main() => runApp(Login());
  }
}

Future<List<Photo>> fetchPhotos(http.Client client) async {
  final prefs = await SharedPreferences.getInstance();
  if(prefs.getString('userId')!='' && prefs.getString('userId') != null){
//    print('gggggggggggggggggggg >>>>>>>>>>>${prefs.getString('userId')}');
//    String id=prefs.getString('userId');
    String userId =prefs.getString('userId').substring(prefs.getString('userId').length -2);
    var userIdArray  = userId.split(']');
    var userIdd = userIdArray[0];
//    final url = 'https://itloes.com/m/api/myWishlist?client_id=1';

    final url = 'https://itloes.com/m/api/myWishlist?client_id='+userId;
    final response = await client.get(url);
    // Use the compute function to run parsePhotos in a separate isolate.

    return compute(parsePhotos, response.body);
  }

}

// A function that converts a response body into a List<Photo>.
List<Photo> parsePhotos(String responseBody)  {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}

class Photo {
  final int id;
  final String name;
  final String price;
  final String image;
  //final String thumbnailUrl;

  Photo({ this.id, this.name,  this.price, this.image});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as String,
      image: json['image'] as String,
    );
  }
}


//void main() => runApp(WishListPage());

class WishListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WishListDetials(),
    );
  }
}

class WishListDetials extends StatelessWidget {
  final String title;


  WishListDetials({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('WISHLIST' , style: TextStyle(fontSize: 25, fontFamily: 'Cairo' , color: const Color(0xff000000))),
        leading: IconButton(
          tooltip: 'WISHLIST',
          icon: const Icon(Icons.favorite),
        ),
      ),
      body: FutureBuilder<List<Photo>>(
        future: fetchPhotos(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? PhotosList(photos: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class PhotosList extends StatelessWidget {
  final List<Photo> photos;

  PhotosList({Key key, this.photos}) : super(key: key);
  bool faourite = true;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        //return Image.network(photos[index].thumbnailUrl);
       return Container(
         padding: const EdgeInsets.all(10.0),
           child: Row(
               children: <Widget>[
               InkWell(
                child :  Container(
                    child: Column(
                     children: <Widget>[
                       FittedBox(fit:BoxFit.fitWidth,
                         child:
                         Text(
                           photos[index].price,
                           style: TextStyle(
                             fontFamily: 'Cairo',
                             //fontSize: 15,
                             color: const Color(0xff000000),
                             fontWeight: FontWeight.w400,
                           ),
                           textAlign: TextAlign.right,
                         ),
                       ),
                       Image.network(
                         (photos[index].image),
                         width: MediaQuery.of(context).size.width * 0.40,
                       ),

                       SizedBox(
                         height: 3.0,
                       ),
                       FittedBox(
                         fit:BoxFit.fitWidth,
                         child : Icon(
                           Icons.favorite_border,
                           size: 20.0,
                           color: (faourite == true ? Colors.red : Colors.black),
                         ),
                       ),
                       FittedBox(fit:BoxFit.fitWidth,
                         child:  Text(photos[index].name.toUpperCase(),
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
                           builder: (BuildContext context) => Product()
                       )
                   );
                 },
               ),
               ]
           ),
       );
      },
    );
  }
}


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            //after the login REST api call && response code ==200
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext ctx) => LoginPage()));
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
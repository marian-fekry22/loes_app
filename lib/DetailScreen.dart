import 'package:flutter/material.dart';
import 'Contants/MyText.dart';

class DetailScreen extends StatelessWidget {
  int index;
  String imageUrl;
  DetailScreen({@required this.index,@required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: MyText(
          title: 'Details',
          size: 20,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            child: GestureDetector(
              onTap: () {
                // Navigator.pop(context);
              },
              child: Center(
                child:
                Hero(
                  tag: 'imageHero$index',
                  child: Image.asset(
                    imageUrl,
                  ),
                ),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Divider(
              color: Colors.black26.withOpacity(.1),
              height: 3,
              thickness: 3,
            ),
          ),
        ],
      ),

    );
  }
}

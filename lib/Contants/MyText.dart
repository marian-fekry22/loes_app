import 'package:flutter/material.dart';

class MyText extends StatelessWidget {

  String title;
  TextAlign alien;
  double size;
  Color colorr;
  FontWeight fontWeight;
  TextDecoration decoration;
  MyText({@required this.title,this.size,this.colorr,this.alien,this.fontWeight,this.decoration});



  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: colorr==null?Colors.black:colorr,
        fontSize: size == null ? 14 : size,
        fontFamily: 'cairo',fontWeight: FontWeight==null?FontWeight.normal:fontWeight,
        decoration: decoration==null?TextDecoration.none:decoration,
      ),
      textAlign: alien==null?TextAlign.start:alien,
    );
  }
}

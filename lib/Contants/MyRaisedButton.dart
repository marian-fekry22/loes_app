import 'package:flutter/material.dart';

class MyRaisedButton extends StatelessWidget {
 double border_size;
 Color border_color;
 Widget child;
 Function onpressed;
 Color button_color;


  MyRaisedButton({@required this.child,this.border_size,this.border_color,this.onpressed,this.button_color});
  @override
  Widget build(BuildContext context) {
    return   RaisedButton(

      color: button_color==null?Colors.white:button_color,
      onPressed: onpressed==null?(){}:onpressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(border_size==null?5:border_size),
        side: BorderSide(color: border_color==null?Colors.transparent:border_color),
      ),
      child:child
    );
  }
}

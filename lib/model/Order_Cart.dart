
import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
class Order_Cart{
  int id;
   int product_id;
   String product_Name;
    String product_image;
   String product_size;
    String product_color;
    int product_All_price;

  Order_Cart(dynamic obj){
    this.product_id=obj['product_id'];
    this.product_Name=obj['product_Name'];
    this.product_image=obj['product_image'];
    this.product_size=obj['product_size'];
    this.product_color=obj['product_color'];
    this.product_All_price=obj['product_All_price'];

  }
   Order_Cart.fromMap(Map<String,dynamic> data){
     this.product_id=data['product_id'];
     this.product_Name=data['product_Name'];
     this.product_image=data['product_image'];
     this.product_size=data['product_size'];
     this.product_color=data['product_color'];
     this.product_All_price=data['product_All_price'];
   }

   Map<String,dynamic> toMap(){
  return {
    'product_id':product_id,
    'product_Name':product_Name,
    'product_image':product_image,
    'product_size':product_size,
    'product_color':product_color,
    'product_All_price':product_All_price
  };
   }

  }


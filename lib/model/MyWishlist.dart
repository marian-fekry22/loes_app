

class MyWishlist {


  final   id;
  final   name;
  final price;
  final image;
  final links;


  MyWishlist({this.id,this.name,this.price,this.image,this.links
  });

  factory MyWishlist.fromJson(Map<String, dynamic> json) {

//print(json['brand_order_1']);
//    print(dataList[0]);
//  print ('${}>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>')
    return MyWishlist(
        name: json['name'],
        price:json['price'],
        image:json['image'],
        links:json['_links'],


    );


  }

}


class Result_search_by_Categoray{



  final int id;
  final String name;
  final price;
  final brand;
  final image;


  Result_search_by_Categoray({this.id, this.name, this.price, this.brand, this.image});

  factory Result_search_by_Categoray.fromJson(Map<String, dynamic> json) {


    return Result_search_by_Categoray(
      name: json['result'][0]['results'][0]['name'],
//        price: json['result']['results'][0][0]['price'],
//        brand: json['result']['results'][0][0]['brand'],
//    image: json['result']['results'][0][0]['image'],


    );

  }
}
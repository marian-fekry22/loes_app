//SearchByKeyword

class SearchByKeyword{



  final int id;
  final String name;
  final price;
  final brand;
  final image;


  SearchByKeyword({this.id, this.name, this.price, this.brand, this.image});

  factory SearchByKeyword.fromJson(Map<String, dynamic> json) {

    return SearchByKeyword(
      name: json['result'][0]['results'][0]['name'],
//        price: json['result']['results'][0][0]['price'],
//        brand: json['result']['results'][0][0]['brand'],
//    image: json['result']['results'][0][0]['image'],


    );

  }
}
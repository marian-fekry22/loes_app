


class productDetails{


 final id;
 final category;
 final  sub_category;
 final brand;
 final name;
 final  nickname;
 final  price;
 final is_offered;
 final offer_price;
 final release_date;
 final  main_color;
 final  colorWay;
 final  sizes;
 final  is_dropped;
 final  is_spaced;
 final  is_new_released;
 final  SKU;
 final  upper_material;
 final  technology;
 final  silhouette;
 final  designer;
 final  description;
 final  image;
final List detailss;


 productDetails({this.id, this.category, this.sub_category, this.brand,
     this.name, this.nickname, this.price, this.is_offered, this.offer_price,
     this.release_date, this.main_color, this.colorWay, this.sizes,
     this.is_dropped, this.is_spaced, this.is_new_released, this.SKU,
     this.upper_material, this.technology, this.silhouette, this.designer,
     this.description, this.image,this.detailss});

 factory productDetails.fromJson(Map<String, dynamic> json) {

//   var list = json['results']['details'] as List;
//   print('${list[0]['brand']}'+';;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;');
   //List<Data> dataList = list.map((i) => Data.fromJson(i)).toList();


//print(json['results']['details'][0]['category']+'>>>>oooooooooooooooooooooooooo>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');

//    print(dataList[0]);
//  print ('${}>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>')
    return productDetails(
//      category: json['results']['details'][0]['category'],
//      sub_category: json['results']['details']['sub_category'],
//      brand: json['results']['details']['brand'],
//      name: json['results']['details']['name'],
//      nickname: json['results']['details']['nickname'],
     detailss: json['results']['details']

    );

}
}
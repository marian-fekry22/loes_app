class Result_search_by_Categoray{



  final id;
  final name;
  final price;
  final brand;
  final image;


  Result_search_by_Categoray({this.id, this.name, this.price, this.brand, this.image});

  factory Result_search_by_Categoray.fromJson(Map<String, dynamic> json) {


//    final jsonBody = json.decode(response.body) as List;
//     jsonBody.map((data) => new EmployeeModel.fromJson(data)).toList();

//   var list = json['results']['details'] as List;
//   print('${list[0]['brand']}'+';;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;');
    //List<Data> dataList = list.map((i) => Data.fromJson(i)).toList();


print(json['results']['results']['name']+'>>>>oooooooooooooooooooooooooo>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');

//    print(dataList[0]);
//  print ('${}>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>')
    return Result_search_by_Categoray(
      id: json['id'],
//      name: json['results']['results'],
//      price: json['results']['results'],
//      brand: json['results']['results'],
//      image: json['results']['results'],


    );

  }
}
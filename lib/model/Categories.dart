
class Categories {


  final   message;
  final count;
  final  results;


  Categories({this.message,this.count,this.results
  });

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
      message: json['message'],
      count:json['count'],
      results:json['results'],


    );


  }

}


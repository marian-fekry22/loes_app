class User {
  final String id;
  final String username;
  final String email;
  final List<Data> data;

  User({this.id, this.username,this.email, this.data});

  factory User.fromJson(Map<String, String> parsedJson){

    var list = parsedJson['data'] as List;
    print(list.runtimeType);
    List<Data> dataList = list.map((i) => Data.fromJson(i)).toList();


    return User(
        id: parsedJson['id'],
        username: parsedJson['username'],
        email: parsedJson['email'],
        data: dataList
    );
  }
}

class Data {
  final String id;


  Data({this.id});

  factory Data.fromJson(Map<String, String> parsedJson){
    return Data(
        id:parsedJson['id'],
    );
  }
}
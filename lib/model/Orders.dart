class Orders{
  int _id,_proId;
  String  _proName,_proImage, _prosize,_procolor;
  int _price;





  Orders(dynamic obj){
    _id = obj['id'];
    _proId = obj['proId'];
    _proName = obj['proName'];
    _proImage = obj['proImage'];
    _prosize= obj['prosize'];
    _procolor = obj['procolor'];
    _price = obj['price'];
  }
  Orders.fromMap(Map<String, dynamic> data){
    _id = data['id'];
    _proId = data['proId'];
    _proName = data['proName'];
    _proImage = data['proImage'];
    _prosize= data['prosize'];
    _procolor = data['procolor'];
    _price = data['price'];
  }
  Map<String, dynamic> toMap() => {'id' : _id, 'proId': _proId,
    'proName' : _proName,'proImage':_proImage,
    'prosize' : _prosize,'procolor':_procolor,
    'price' : _price
  };

  int get price => _price;

  get procolor => _procolor;

  get prosize => _prosize;

  get proImage => _proImage;

  String get proName => _proName;

  get proId => _proId;

  int get id => _id;
}
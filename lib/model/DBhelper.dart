
import 'package:loes_app/model/Order_Cart.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper{
  static final DbHelper _instance = DbHelper.internal();
  factory DbHelper() => _instance;
  DbHelper.internal();
  static Database _db;

  String db_name='Orders.db';
  String table_name='order';

  Future<Database> createDatabase() async{
    if(_db != null){
      return _db;
    }
//    _db=await initDB();
//    return _db;
    //define the path to the database


    String path = join(await getDatabasesPath(), 'Orders.db');

    _db = await openDatabase(path,version: 2,
        onCreate: (Database db, int v){
      //create all tables
          //db.execute("create table order(id integer primary key autoincrement, name varchar(50), content varchar(255), hours integer)");

      db.execute('create table Ordertable(id integer primary key autoincrement, '
          'product_id integer,'
          ' product_Name varchar(255),'
          'product_image varchar(50),'
          'product_size varchar(255),'
          'product_color varchar(255),'
          ' product_All_price integer)');
    });

    return _db;
  }

  Future<int> createOrder(Order_Cart orderCart) async{

    Database db = await createDatabase();
    //db.rawInsert('insert into courses')
    print(orderCart.product_Name+'done--------------------------------------');
//  int x=await  db.insert('order', orderCart.toMap());


    String insertt='INSERT INTO Ordertable (product_id, product_Name, product_image, product_size, product_color, product_All_price)'
        ' VALUES (${orderCart.product_id},${orderCart.product_Name}, ${orderCart.product_image}, ${orderCart.product_size},'
        ' ${orderCart.product_color}, ${orderCart.product_All_price}))';
    return db.rawInsert(insertt);
//    return x;
  }

  Future<List> allOrder() async{
    Database db = await createDatabase();
    //db.rawQuery("select * from courses")
    return db.query('$table_name');
  }

  Future<int> deleteOrder(int productId) async{
    Database db = await createDatabase();
    return db.delete('$table_name',where: 'product_id = ?',whereArgs:[productId] );
  }

}
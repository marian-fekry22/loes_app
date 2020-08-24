
import 'package:loes_app/model/Orders.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class DbHelper{
  static final DbHelper _instance = DbHelper.internal();
  factory DbHelper() => _instance;
  DbHelper.internal();
  static Database _db;

  Future<Database> createDatabase() async{
    if(_db != null){
      return _db;
    }
    //define the path to the database
    String path = join(await getDatabasesPath(), 'order.db');
    _db = await openDatabase(path,version: 1,onCreate: (Database db, int v){
      //create all tables
      db.execute("create table Orders(id integer primary key autoincrement, proId integer, proName varchar(50), proImage varchar(255),prosize varchar(50), procolor varchar(255), price integer)");


    });
    return _db;
  }

  Future<int> createorder(Orders order) async{
    Database db = await createDatabase();
    //db.rawInsert('insert into courses')
    return db.insert('Orders', order.toMap());
  }

  Future<List> allorders() async{
    Database db = await createDatabase();
    //db.rawQuery("select * from courses")
    return db.query('Orders');
  }

  Future<void> deleteorder(int id) async{
    Database db = await createDatabase();
    return db.delete('Orders',where: 'id = ?',whereArgs:[id] );
  }

  Future<void> deleteorder_ByName(String proName) async{
    Database db = await createDatabase();
    return db.delete('Orders',where: 'proName = ?',whereArgs:[proName] );
  }

  Future<int> deleteallData() async{
    Database db = await createDatabase();
     db.execute('delete * from Orders');
  }

}
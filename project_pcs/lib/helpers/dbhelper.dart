import 'dart:io';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:project_pcs/models/materi.dart';

class DbHelper{
  static late DbHelper _dbHelper;
  static late Database _database;

  DbHelper._createObject();

  factory DbHelper(){
    _dbHelper = DbHelper._createObject();
    return _dbHelper;
  }

  Future<Database> initDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'materi.db';
    var contactDatabase = openDatabase(path, version: 1, onCreate: _createDb);
    return contactDatabase;
  }

  void _createDb(Database db, int version) async {
    await db.execute("""CREATE TABLE contact (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT, phone TEXT)""");
  }

  Future<Database> get database async {
    _database = await initDb();
    return _database;
  }

  Future<int> insert(Materi object) async {
    Database db = await this.database;
    int count = await db.insert('materi', object.toMap());
    return count;
  }

  Future<List<Map<String, dynamic>>> select() async {
    Database db = await this.database;
    var mapList = await db.query('materi', orderBy: 'name');
    return mapList;
  }

  Future<int> update(Materi object) async {
    Database db = await this.database;
    int count = await db.update('materi', object.toMap(), where: 'id=?', whereArgs: [object.id]);
    return count;
  }

  Future<int> delete(int id) async {
    Database db = await this.database;
    int count = await db.delete('materi', where: 'id=?', whereArgs: [id]);
    return count;
  }

  Future<List<Materi>> getContactList() async {
    var materiMapList = await select();
    int count = materiMapList.length;

    List<Materi> materiList = [];
    for(int i = 0; i < count; i++){
      materiList.add(Materi.fromMap(materiMapList[i]));      
    }
    return materiList;
  }
}
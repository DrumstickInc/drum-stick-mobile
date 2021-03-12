import 'dart:io';
import 'package:flutter_app/models/user.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  final String tableUser = "User";
  final String columnName = "name";
  final String columnUserName = "username";
  final String columnPassword = "password";



  DatabaseHelper.internal();

  initDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'user.db');
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE User(id INTEGER PRIMARY KEY, name TEXT, username TEXT, password TEXT, flaglogged TEXT)");
    print("Table is created");
  }
  //add
  Future<User> createUser(User user) async {
    var dbClient = await db;
    user.id = await dbClient.insert('user', user.toMap());
    return user;
  }
  Future<List<User>> retrieveUser(User user) async {
    var dbClient = await db;
    List<Map> maps = await dbClient.query('user', columns: ['id', 'name','username', 'password']);
    List<User> users = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        users.add(User.fromMap(maps[i]));
      }
    }
    return users;
  }
  //insertion


  Future<int> updateUser(User user) async {
    var dbClient = await db;
    return await dbClient.update(
      'user',
      user.toMap(),
      where: 'id = ?',
      whereArgs: [user.id],
    );
  }
  Future<int> deleteUser(int id) async {
    var dbClient = await db;
    return await dbClient.delete(
      'user',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
  Future<User> selectUser(User user) async{
    print("Select User");
    print(user.username);
    print(user.password);
    var dbClient = await db;
    List<Map> maps = await dbClient.query(tableUser,
        columns: [columnUserName, columnPassword],
        where: "$columnUserName = ? and $columnPassword = ?",
        whereArgs: [user.username,user.password]);
    print(maps);
    if (maps.length > 0) {
      print("User Exist !!!");
      return user;
    }else {
      return null;
    }
  }

  Future close() async {
    var dbClient = await db;
    dbClient.close();
  }
}
import 'package:data_base/notemodel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {
  static final _databasename = "logindb.db";
  static final _tablename = "login";
  static final _dbversion = 1;
  static final _username = "username";
  static final _lastname = "Lastname";
  static final _password = "password";
  static final _cpassword = "cPassword";
  static final _email = "email";

  DbHelper._privateConstructor();
  static final DbHelper instance = DbHelper._privateConstructor();
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDb();
    return _database!;
  }

  _initDb() async {
    String path = join(await getDatabasesPath(), _databasename);
    return await openDatabase(path, version: _dbversion, onCreate: _onCreate);
  }

  _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $_tablename (
    $_username TEXT NOT NULL,
    $_lastname TEXT NOT NULL,
    $_password TEXT NOT NULL,
    $_cpassword TEXT NOT NULL,
    $_email PRIMARY KEY 
    )
    ''');
  }

  Future<void> addData(NoteModel login) async {
    Database Db = await instance.database;
    int time = await Db.insert(_tablename, {
      _username: login.Firstname,
      _lastname: login.lastname,
      _password: login.Password,
      _cpassword: login.cpassword,
      _email: login.Email,
    });
  }

  Future<List<Map<String, dynamic>>> getAllValues() async {
    Database db = await instance.database;
    return db.query(_tablename);
  }

  Future<List<Map<String, dynamic>>> Check(
      String email, String password) async {
    Database db = await instance.database;
    return db.query(_tablename,
        where: "$_email=? and $_password=?", whereArgs: [email, password]);
  }
}

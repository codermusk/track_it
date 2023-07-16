import 'package:async/async.dart';
import 'package:path/path.dart' show join;
import 'package:sqflite/sqflite.dart';
import '../models/expense.dart';

class ExpensesDataBase {
 static const _databaseName = 'expenses.db';
 static const _databaseVersion = 1;

// This Private constructor is used to maintain a single instance of the database class in order to maintain singleton instance
  ExpensesDataBase._privateConstructor();

  static final ExpensesDataBase instance = ExpensesDataBase._privateConstructor();

  static Database? _database;

// This get methods automatically gets called during instantiating the database helper class
  Future get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    final path = await getDatabasesPath();
    String dbPath = join(path, _databaseName);
    return await openDatabase(
        dbPath, version: _databaseVersion, onCreate: _create);
  }

  Future _create(Database db, int version) async {
    await db.execute("""CREATE TABLE expenses(
    id INTEGER PRIMARY KEY,
    expenseAmount INTEGER NOT NULL,
    expenseType TEXT,
    expenseReason TEXT,
    paidType TEXT
    """);
  }

  Future<List<Expense>> readAllExpense() async {
    final db = await instance.database ;
    final result = db.query('expenses');
    return result.map((json)=>Expense.fromMap(json)).toList();
  }

}
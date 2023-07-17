import 'dart:html';

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
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    expenseAmount INTEGER NOT NULL,
    expenseType TEXT,
    paidType TEXT,
    createdDate date
    """);
  }

  Future<List<Expense>> readAllExpense() async {
    final db = await instance.database ;
    final result = db.query('expenses');
    return result.map((json)=>Expense.fromJson(json)).toList();
  }

   Future<Expense> insertExpense(Expense expense) async{
    final db = await instance.database;
    final id = await db.insert('expenses',expense.toJson());
    return expense ;
  }

  Future<Expense> updateExpense(Expense expense) async{
    final db = await instance.database;
    final id = await db.update('expenses',expense.toJson(), where:'id = ?',whereArgs: [expense.id]);
    return expense;
  }

  Future<int> deleteExpense(int id) async{
    final db = await instance.database;
    return await db.delete('expenses',where: 'id = ?',whereArgs:[id]);
  }

  Future<Expense> readExpense(int id)async{
    final db = await instance.database;
    final Expenses = await db.query(
      'expenses',
      columns: Expense.columns,
      where: 'id = ?',
      whereArgs: [id],
    );
    if (Expenses.isNotEmpty) {
      return Expense.fromJson(Expenses.first);
    } else {
      throw Exception('Id $id not found');
    }

  }



}
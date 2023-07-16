import 'dart:async';
import 'package:provider/provider.dart';
import '../databases/expenses_database.dart';
import 'package:flutter/material.dart';
import '../models/expense.dart';
class ExpensesProvider with ChangeNotifier {
var _expenses = [];
List<Expense> get expenses => [..._expenses];
Future fetchAllExpenses() async{
  _expenses = await ExpensesDataBase.instance.readAllExpense();
  notifyListeners();
}

 addExpense(Expense expense) async{
  await ExpensesDataBase.instance.insertExpense(expense);
  _expenses.add(expense);
  notifyListeners();
}

 updateExpense(Expense expense) async{
  final index = _expenses.indexWhere((element) => element.id==expense.id);
  await ExpensesDataBase.instance.updateExpense(expense);
  _expenses[index] = expense;
  notifyListeners();
}

 deleteExpense(int id) async{
  await ExpensesDataBase.instance.deleteExpense(id);
  _expenses.removeWhere((element) => element.id == id);
  notifyListeners();
 }

 fetchExpense(int id) async{
  final expenses = _expenses.where((element) => element.id == id);
  return expenses.first;
 }

}
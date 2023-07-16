import 'dart:async';
import 'package:provider/provider.dart';
import '../databases/expenses_database.dart';
import 'package:flutter/material.dart';
class ExpensesProvider with ChangeNotifier {
var Expenses = [];
Future fetchAllExpenses() async{
  Expenses = await ExpensesDataBase.instance.readAllExpense();
}

}
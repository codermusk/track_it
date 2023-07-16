import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Expense {
  final int id;
  final int expenseAmount;
  final String expenseType;
  final String expenseReason;
  final String paidType;

  Expense();

  const Expense(
      {required this.expenseAmount, required this.expenseReason, required this.paidType, this.expenseType });

  Map toMap() {
    Map map = {
      'expenseAmount': expenseAmount,
      'expenseType': expenseType,
      'expenseReason': expenseReason,
      'paidType': paidType
    };
    if (id != null) {
      map['id'] = id;
    }
    return map;
  }

  static fromMap(Map map) {
    Expense expense = new Expense();
    expense.id = map['id'];
    expense.paidType = map['paidType'];
    expense.expenseReason = map['expenseReason'];
    expense.expenseAmount = map['expenseAmount'];
    expense.expenseType = map['expenseType']
    return expense;
  }

}



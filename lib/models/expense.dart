import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
class Expense {
  int? id;
  int? expenseAmount;
  String? expenseType;
  String? expenseReason;
  String? paidType;

  Expense.empty();

  Expense(
      {this.id,
      this.expenseAmount,
      this.expenseReason,
      this.paidType,
      this.expenseType});

   static final columns = ['id','expenseAmount','expenseReason','paidType','expenseType'];

  Map toJson() {
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

  static fromJson(Map map) {
    Expense expense = Expense.empty();
    expense.id = map['id'];
    expense.paidType = map['paidType'];
    expense.expenseReason = map['expenseReason'];
    expense.expenseAmount = map['expenseAmount'];
    expense.expenseType = map['expenseType'];
    return expense;
  }
}

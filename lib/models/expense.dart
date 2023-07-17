import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Expense {
  int? id;
  int? expenseAmount;
  String? expenseType;
  String? paidType;
  DateTime? createdDate;

  Expense.empty();

  Expense(
      {this.id,
      this.expenseAmount,
      this.paidType,
      this.expenseType,
      DateTime? createdDate})
      : createdDate = createdDate ?? DateTime.now();

  static final columns = [
    'id',
    'expenseAmount',
    'paidType',
    'expenseType',
    'createdDate'
  ];

  Map toJson() {
    Map map = {
      'expenseAmount': expenseAmount,
      'expenseType': expenseType,
      'paidType': paidType,
      'createdDate': createdDate
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
    expense.expenseAmount = map['expenseAmount'];
    expense.expenseType = map['expenseType'];
    expense.createdDate = map['createdDate'];
    return expense;
  }
}

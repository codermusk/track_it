import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Expense {
  int? id;
  int? expenseAmount;
  String? expenseType;
  String? expenseReason;
  String? paidType;
  DateTime? createdDate;

  Expense.empty();

  Expense(
      {this.id,
      this.expenseAmount,
      this.expenseReason,
      this.paidType,
      this.expenseType,
      DateTime? createdDate})
      : createdDate = createdDate ?? DateTime.now();

  static final columns = [
    'id',
    'expenseAmount',
    'expenseReason',
    'paidType',
    'expenseType',
    'createdDate'
  ];

  Map toJson() {
    Map map = {
      'expenseAmount': expenseAmount,
      'expenseType': expenseType,
      'expenseReason': expenseReason,
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
    expense.expenseReason = map['expenseReason'];
    expense.expenseAmount = map['expenseAmount'];
    expense.expenseType = map['expenseType'];
    expense.createdDate = map['createdDate'];
    return expense;
  }
}

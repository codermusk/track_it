import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
enum ExpenseType{
  Personal,
  Weekend,
  Party,
  FamilyExpense,
  FriendsDayOut,
  DailyNeeds
}
class Expense {
  final int expenseAmount;
  final ExpenseType expenseType;
  final String expenseReason;
  final String paidType;
  const Expense({required this.expenseAmount,required this.expenseReason, required this.paidType, this.expenseType })
}

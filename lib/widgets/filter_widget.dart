import 'package:flutter/material.dart';

class GroupingExpenseWidget extends StatefulWidget {
  const GroupingExpenseWidget({super.key});

  @override
  State<GroupingExpenseWidget> createState() => _GroupingExpenseWidgetState();
}

class _GroupingExpenseWidgetState extends State<GroupingExpenseWidget> {
  Widget _buildChip(String label) {
    return Container(
      padding: EdgeInsets.only(right: 20,left: 10),
        child: Chip(label: Text(label)));
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
      child:  Row(
        children: [
          _buildChip('All'),
          _buildChip('Today'),
          _buildChip('Weekly'),
          _buildChip('Monthly')
        ],
      ),
    );
  }
}

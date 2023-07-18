import 'package:flutter/material.dart';

class GroupingExpenseWidget extends StatefulWidget {
  const GroupingExpenseWidget({super.key});

  @override
  State<GroupingExpenseWidget> createState() => _GroupingExpenseWidgetState();
}

class _GroupingExpenseWidgetState extends State<GroupingExpenseWidget> {
  int active_index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
      child: Row(
        children: [
          MyChip(
              index: 0,
              activeIndex: active_index,
              onPressed: () {
                setState(() {
                  active_index = 0;
                });
              },
              text: 'All'),
          MyChip(
              index: 1,
              activeIndex: active_index,
              onPressed: () {
                setState(() {
                  active_index = 1;
                });
              },
              text: 'Today'),
          MyChip(
              index: 2,
              activeIndex: active_index,
              onPressed: () {
                setState(() {
                  active_index = 2;
                });
              },
              text: 'Weekly'),
          MyChip(
              index: 3,
              activeIndex: active_index,
              onPressed: () {
                setState(() {
                  active_index = 3;
                });
              },
              text: 'Monthly'),
        ],
      ),
    );
  }
}

class MyChip extends StatelessWidget {
  final int index;
  final int activeIndex;
  final VoidCallback onPressed;
  final String text;

  MyChip(
      {required this.index,
      required this.activeIndex,
      required this.onPressed,
      required this.text});

  @override
  Widget build(BuildContext context) {
    final isactive = index == activeIndex;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          padding: const EdgeInsets.only(right: 20, left: 10),
          child: Chip(
            label: Text(text),
            backgroundColor: isactive? Colors.transparent : Colors.cyan,
            shape: RoundedRectangleBorder(
                side:const BorderSide(
                  width: 1.0,
                  color: Colors.orange
                ),
                borderRadius: BorderRadius.circular(15)),
          )),
    );
  }
}

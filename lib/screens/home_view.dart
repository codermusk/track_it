import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../widgets/filter_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children:  [
        GroupingExpenseWidget()
      ],
    );
  }
}

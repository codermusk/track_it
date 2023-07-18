import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../widgets/filter_widget.dart';
import '../widgets/stats_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GroupingExpenseWidget(),
        Divider(color: Colors.transparent,),
        StatsWidget(),
      ],
    );
  }
}

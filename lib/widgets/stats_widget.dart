import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class StatsWidget extends StatefulWidget {
  const StatsWidget({super.key});

  @override
  State<StatsWidget> createState() => _StatsWidgetState();
}

class _StatsWidgetState extends State<StatsWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15)
        ),
        height: 160,
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [const Text('Income'), Text('10000')],
                ),
                Column(
                  children: [Text('Spent'), Text('100')],
                )
              ],
            ),
            CircularPercentIndicator(radius: 40,
            lineWidth: 15,
            progressColor: Colors.pink,
            percent: 0.10,)
          ],
        ),
      ),
    );
  }
}

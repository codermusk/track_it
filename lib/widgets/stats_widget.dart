import 'package:flutter/material.dart';
class StatsWidget extends StatefulWidget {
  const StatsWidget({super.key});

  @override
  State<StatsWidget> createState() => _StatsWidgetState();
}

class _StatsWidgetState extends State<StatsWidget> {
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  'Income'
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

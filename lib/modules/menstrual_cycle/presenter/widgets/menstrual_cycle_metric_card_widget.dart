import 'package:flutter/material.dart';

class MenstrualCycleMetricCardWidget extends StatelessWidget {
  final String title;
  final String value;

  const MenstrualCycleMetricCardWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xff1C1B1F),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value,
              style: const TextStyle(
                fontFamily: 'Livvic',
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 10,
                color: Color(0xff939393),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
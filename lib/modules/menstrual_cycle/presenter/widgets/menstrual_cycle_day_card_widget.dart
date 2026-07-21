import 'package:flutter/material.dart';

class MenstrualCycleDayCardWidget extends StatelessWidget {
  final String date;
  final String dayName;
  final List<Color> symptomDots;

  const MenstrualCycleDayCardWidget({
    super.key,
    required this.date,
    required this.dayName,
    this.symptomDots = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xff1C1B1F),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: const BoxDecoration(
              color: Color(0xff489F9F),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            date,
            style: const TextStyle(
              fontFamily: 'Livvic',
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            dayName,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontSize: 12,
              color: Color(0xff939393),
            ),
          ),
          const Spacer(),
          if (symptomDots.isNotEmpty)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: symptomDots.map((color) => Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Container(width: 6, height: 6, decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
              )).toList(),
            ),
        ],
      ),
    );
  }
}
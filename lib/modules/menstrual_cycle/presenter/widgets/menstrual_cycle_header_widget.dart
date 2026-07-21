import 'package:flutter/material.dart';

class MenstrualCycleHeaderWidget extends StatelessWidget {
  final VoidCallback onBack;
  final VoidCallback onCalendar;

  const MenstrualCycleHeaderWidget({
    super.key,
    required this.onBack,
    required this.onCalendar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          GestureDetector(
            onTap: onBack,
            child: const Icon(Icons.arrow_back, color: Color(0xff939393)),
          ),
          const SizedBox(width: 12),
          const Text(
            'Ciclo',
            style: TextStyle(
              fontFamily: 'Livvic',
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: onCalendar,
            child: const Icon(Icons.calendar_today, color: Color(0xff939393), size: 20),
          ),
        ],
      ),
    );
  }
}
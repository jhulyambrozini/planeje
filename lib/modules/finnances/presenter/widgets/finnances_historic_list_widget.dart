import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';

class FinnancesHistoricListWidget extends StatelessWidget {
  final VoidCallback onBack;
  final VoidCallback onEditMonth;

  const FinnancesHistoricListWidget({
    super.key,
    required this.onBack,
    required this.onEditMonth,
  });

  @override
  Widget build(BuildContext context) {
    final months = ['ABRIL', 'MARÇO'];
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: onBack,
                child: const Icon(Icons.arrow_back, color: ColorsTheme.light),
              ),
              const SizedBox(width: 8),
              Image.asset('assets/images/logo.png', width: 70),
            ],
          ),
          const SizedBox(height: 40),
          const Text(
            'Esse é seu histórico\nde gastos',
            style: TextStyle(
              color: ColorsTheme.primaryLight,
              fontFamily: 'Livvic',
              fontSize: 20,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'ANO - 2024',
              style: TextStyle(
                color: ColorsTheme.primaryLight,
                fontFamily: 'Inter',
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 8),
          ...months.map((month) => _buildMonthTile(month)),
        ],
      ),
    );
  }

  Widget _buildMonthTile(String month) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'MÊS DE: $month',
              style: const TextStyle(
                color: ColorsTheme.light,
                fontFamily: 'Inter',
                fontSize: 12,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: onEditMonth,
              child: const Icon(
                Icons.edit_square,
                color: ColorsTheme.primaryLight,
                size: 16,
              ),
            ),
          ],
        ),
        const Divider(color: ColorsTheme.secondary, height: 24, thickness: 1),
      ],
    );
  }
}
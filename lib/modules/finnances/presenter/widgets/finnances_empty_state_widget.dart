import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';

class FinnancesEmptyStateWidget extends StatelessWidget {
  final VoidCallback onAddMonth;

  const FinnancesEmptyStateWidget({super.key, required this.onAddMonth});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/open_finances.png',
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 32),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 54),
          child: Text(
            'Adicione um mês e comece a monitorar seus gastos !',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorsTheme.light,
              fontFamily: 'Livvic',
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 24),
        GestureDetector(
          onTap: onAddMonth,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: ColorsTheme.primary,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'adicionar mês',
                  style: TextStyle(
                    color: ColorsTheme.primaryDark,
                    fontFamily: 'Inter',
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 4),
                Icon(Icons.add, color: ColorsTheme.primaryDark, size: 14),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
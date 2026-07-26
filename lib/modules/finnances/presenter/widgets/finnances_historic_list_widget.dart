import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/core/presenter/theme/font_sizes.dart';

class FinnancesHistoricItemWidget extends StatelessWidget {
  final void Function() onTap;
  final String month;
  const FinnancesHistoricItemWidget({
    super.key,
    required this.onTap,
    required this.month,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'MÊS DE: $month',
              style: const TextStyle(
                color: ColorsTheme.mutedForeground,
                fontFamily: 'Inter',
                fontSize: FontSizesTheme.sm,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: onTap,
              icon: const Icon(
                Icons.edit_square,
                color: ColorsTheme.primaryLight,
                size: FontSizesTheme.lg,
              ),
            ),
          ],
        ),
        const Divider(color: ColorsTheme.inputInLine, height: 24, thickness: 1),
      ],
    );
  }
}

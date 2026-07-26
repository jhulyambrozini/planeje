import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/core/presenter/theme/font_sizes.dart';

class FinnancesHistoricItemWidget extends StatelessWidget {
  final void Function() onTap;
  final String month;
  final String totalReceived;
  final String totalSpent;
  const FinnancesHistoricItemWidget({
    super.key,
    required this.onTap,
    required this.month,
    required this.totalReceived,
    required this.totalSpent,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'MÊS DE: ${month.toUpperCase()}',
              style: const TextStyle(
                color: ColorsTheme.foreground,
                fontFamily: 'Inter',
                fontSize: FontSizesTheme.md,
              ),
            ),
            IconButton(
              onPressed: onTap,
              style: IconButton.styleFrom(
                side: BorderSide(color: ColorsTheme.primaryLight, width: 1),
              ),
              icon: const Icon(
                Icons.edit_outlined,
                color: ColorsTheme.primaryLight,
                size: 20,
              ),
            ),
          ],
        ),

        Text(
          'TOTAL GASTO: R\$ ${totalSpent}',
          style: TextStyle(
            color: ColorsTheme.error,
            fontSize: FontSizesTheme.sm,
          ),
        ),
        Text(
          'TOTAL RECEBIDO: R\$ ${totalReceived}',
          style: TextStyle(
            color: ColorsTheme.success,
            fontSize: FontSizesTheme.sm,
          ),
        ),

        const Divider(color: ColorsTheme.inputInLine, height: 24, thickness: 1),
      ],
    );
  }
}

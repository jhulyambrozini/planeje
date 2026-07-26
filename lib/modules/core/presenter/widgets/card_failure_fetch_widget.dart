import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/core/presenter/theme/font_sizes.dart';

class CardFailureFetchWidget extends StatelessWidget {
  final String message;
  final void Function() onRefresh;
  const CardFailureFetchWidget({
    super.key,
    required this.message,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 16,
        children: [
          Text(
            'OPS! ALGO DEU ERRADO',
            style: TextStyle(
              fontSize: FontSizesTheme.lg,
              color: ColorsTheme.error,
            ),
          ),
          Icon(Icons.error_outline, color: ColorsTheme.error, size: 48),
          Text(
            message,
            style: TextStyle(
              fontSize: FontSizesTheme.md,
              color: ColorsTheme.mutedForeground,
              fontFamily: 'Inter',
            ),
          ),
          ElevatedButton(onPressed: onRefresh, child: Text('tente novamente')),
        ],
      ),
    );
  }
}

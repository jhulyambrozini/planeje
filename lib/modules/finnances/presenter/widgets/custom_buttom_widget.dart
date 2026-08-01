import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/core/presenter/theme/font_sizes.dart';

class CustomButtomWidget extends StatelessWidget {
  final bool isDense;
  final void Function() onPressed;
  final String label;
  final IconData? icon;
  const CustomButtomWidget({
    super.key,
    required this.isDense,
    required this.onPressed,
    required this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final denseStyle = ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      backgroundColor: ColorsTheme.primary,
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );
    final outlinedStyle = ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      backgroundColor: ColorsTheme.background,
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: ColorsTheme.primary, width: 2),
      ),
    );
    return ElevatedButton(
      style: isDense ? denseStyle : outlinedStyle,
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 4,
        children: [
          if (icon != null)
            Icon(
              icon,
              color: isDense ? ColorsTheme.primaryDark : ColorsTheme.primary,
              size: 14,
            ),
          Text(
            label,
            style: TextStyle(
              color: isDense ? ColorsTheme.primaryDark : ColorsTheme.primary,
              fontFamily: 'Inter',
              fontSize: FontSizesTheme.md,
            ),
          ),
        ],
      ),
    );
  }
}

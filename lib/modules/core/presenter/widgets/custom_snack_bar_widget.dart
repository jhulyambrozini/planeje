import 'package:flutter/material.dart';
import 'package:planeje/modules/core/domain/models/snack_bar_type_model.dart';

class CustomSnackBarWidget {
  final Duration duration;
  final double? fontSize;
  final EdgeInsetsGeometry padding;
  final ScaffoldMessengerState messenger;

  const CustomSnackBarWidget(
    this.messenger, {
    required this.duration,
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
    this.fontSize = 16,
  });

  void show(SnackBarTypeModel type, {bool replaceCurrent = true}) {
    if (replaceCurrent) {
      messenger.hideCurrentSnackBar();
    }
    messenger.showSnackBar(
      SnackBar(
        backgroundColor: type.bgColor,
        content: Row(
          children: [
            Icon(Icons.error, color: type.color),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                type.message,
                style: TextStyle(
                  color: type.color,
                  fontWeight: FontWeight.w500,
                  fontSize: fontSize,
                ),
              ),
            ),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        duration: duration,
      ),
    );
  }
}

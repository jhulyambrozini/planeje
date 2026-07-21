import 'package:flutter/widgets.dart';

class CardNavigateInfosVo {
  final IconData icon;
  final bool hasNotification;
  final String label;
  final void Function() onPressed;

  CardNavigateInfosVo({
    required this.icon,
    this.hasNotification = false,
    required this.label,
    required this.onPressed,
  });
}

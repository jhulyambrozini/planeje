import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/home/value_objects/card_navigate_infos_vo.dart';

class CardToNavigateWidget extends StatelessWidget {
  final CardNavigateInfosVo infos;

  const CardToNavigateWidget({super.key, required this.infos});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: ColorsTheme.primary,
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        onPressed: infos.onPressed,
        child: Stack(
          children: [
            if (infos.hasNotification)
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: ColorsTheme.error,
                    child: SizedBox.shrink(),
                  ),
                ),
              ),
            Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(infos.icon, color: ColorsTheme.primaryDark, size: 36),
                  const SizedBox(height: 5),
                  Text(
                    infos.label,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Livvic',
                      fontWeight: FontWeight.w500,
                      color: ColorsTheme.primaryDark,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

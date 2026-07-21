import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';

class FinnancesDeleteTransactionWidget extends StatelessWidget {
  final VoidCallback onCancel;
  final VoidCallback onDelete;

  const FinnancesDeleteTransactionWidget({
    super.key,
    required this.onCancel,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 220,
        decoration: BoxDecoration(
          color: ColorsTheme.background,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Deseja excluir essa\ntransação?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorsTheme.primaryLight,
                fontFamily: 'Livvic',
                fontSize: 16,
                height: 1.125,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Essa ação não poderá\nser desfeita',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorsTheme.secondaryLight,
                fontFamily: 'Inter',
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: onCancel,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: ColorsTheme.primary, width: 1),
                      ),
                      child: const Center(
                        child: Text(
                          'cancelar',
                          style: TextStyle(
                            color: ColorsTheme.primary,
                            fontFamily: 'Inter',
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: onDelete,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        color: ColorsTheme.primary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          'excluir',
                          style: TextStyle(
                            color: ColorsTheme.primaryDark,
                            fontFamily: 'Inter',
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
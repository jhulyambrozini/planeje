import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/finnances/domain/entities/finnance_transaction_entity.dart';

class TransactionItemWidget extends StatelessWidget {
  final FinnancesTransactionEntity transaction;
  final VoidCallback onEditTransaction;
  final VoidCallback onDeleteTransaction;

  const TransactionItemWidget({
    super.key,
    required this.transaction,
    required this.onEditTransaction,
    required this.onDeleteTransaction,
  });

  @override
  Widget build(BuildContext context) {
    final indicatorColor = transaction.isCashInflow
        ? ColorsTheme.success
        : ColorsTheme.error;
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(color: indicatorColor, width: 1),
              ),
              child: transaction.isCashInflow
                  ? const Icon(Icons.add, size: 6, color: ColorsTheme.success)
                  : const Icon(Icons.remove, size: 6, color: ColorsTheme.error),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TAG: ${transaction.tag.toUpperCase()}',
                    style: TextStyle(
                      color: ColorsTheme.mutedForeground2,
                      fontFamily: 'Livvic',
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    transaction.description,
                    style: const TextStyle(
                      color: ColorsTheme.mutedForeground2,
                      fontFamily: 'Livvic',
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              transaction.value,
              style: TextStyle(
                color: ColorsTheme.mutedForeground,
                fontFamily: 'Inter',
                fontSize: 14,
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: onEditTransaction,
              icon: const Icon(
                Icons.edit_square,
                color: ColorsTheme.primaryLight,
                size: 14,
              ),
            ),
            const SizedBox(width: 4),
            IconButton(
              onPressed: onDeleteTransaction,
              icon: const Icon(
                Icons.delete_outline,
                color: ColorsTheme.error,
                size: 14,
              ),
            ),
          ],
        ),
        const Divider(color: ColorsTheme.inputInLine, height: 24, thickness: 1),
      ],
    );
  }
}

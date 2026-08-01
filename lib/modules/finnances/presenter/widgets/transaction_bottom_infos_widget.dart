import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/finnances/domain/entities/finnances_header_entity.dart';
import 'package:planeje/modules/finnances/presenter/widgets/custom_buttom_widget.dart';

class TransactionBottomInfosWidget extends StatelessWidget {
  final FinnancesHeaderEntity header;
  final VoidCallback onAddTransaction;
  final VoidCallback onSaveEdits;

  const TransactionBottomInfosWidget({
    super.key,
    required this.header,
    required this.onAddTransaction,
    required this.onSaveEdits,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff141414),
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'TOTAL GASTO: R\$ ${header.totalSpent}',
                style: const TextStyle(
                  color: ColorsTheme.error,
                  fontFamily: 'Inter',
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Text(
                'TOTAL RESTANTE: R\$ ${header.totalRemaining}',
                style: const TextStyle(
                  color: ColorsTheme.success,
                  fontFamily: 'Inter',
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              CustomButtomWidget(
                onPressed: onAddTransaction,
                icon: Icons.add,
                label: 'transação',
                isDense: true,
              ),
              const Spacer(),
              CustomButtomWidget(
                onPressed: onSaveEdits,
                label: 'salvar edições',
                isDense: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

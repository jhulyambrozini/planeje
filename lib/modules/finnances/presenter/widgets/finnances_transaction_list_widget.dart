import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';

class FinnancesTransactionListWidget extends StatelessWidget {
  final String monthYear;
  final String totalSpent;
  final String totalRemaining;
  final VoidCallback onBack;
  final VoidCallback onAddTransaction;
  final VoidCallback onEditTransaction;
  final VoidCallback onDeleteTransaction;
  final VoidCallback onSaveEdits;

  const FinnancesTransactionListWidget({
    super.key,
    required this.monthYear,
    this.totalSpent = '',
    this.totalRemaining = '',
    required this.onBack,
    required this.onAddTransaction,
    required this.onEditTransaction,
    required this.onDeleteTransaction,
    required this.onSaveEdits,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeader(),
        const SizedBox(height: 16),
        const Center(
          child: Text(
            'Gastos mês de: maio',
            style: TextStyle(
              color: ColorsTheme.primaryLight,
              fontFamily: 'Livvic',
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Center(
          child: Text(
            'ANO 2024',
            style: TextStyle(
              color: ColorsTheme.secondaryLight,
              fontFamily: 'Livvic',
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _buildTransactionTile(
                description: 'Conta de energia',
                value: 'R\$ 90,00',
                isExpense: true,
              ),
              _buildTransactionTile(
                description: 'Conta de energia',
                value: 'R\$ 90,00',
                isExpense: true,
              ),
              _buildTransactionTile(
                description: 'Conta de energia',
                value: 'R\$ 190,00',
                isExpense: false,
              ),
              _buildTransactionTile(
                description: 'Conta de energia',
                value: 'R\$ 90,00',
                isExpense: true,
              ),
              _buildTransactionTile(
                description: 'Conta de energia',
                value: 'R\$ 90,00',
                isExpense: true,
              ),
            ],
          ),
        ),
        _buildBottomBar(),
      ],
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Row(
        children: [
          GestureDetector(
            onTap: onBack,
            child: const Icon(Icons.arrow_back, color: ColorsTheme.light),
          ),
          const Spacer(),
          Image.asset('assets/images/logo.png', width: 70),
        ],
      ),
    );
  }

  Widget _buildTransactionTile({
    required String description,
    required String value,
    required bool isExpense,
  }) {
    final indicatorColor = isExpense ? ColorsTheme.error : ColorsTheme.success;
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
              child: isExpense
                  ? const Icon(Icons.remove, size: 6, color: ColorsTheme.error)
                  : const Icon(Icons.add, size: 6, color: ColorsTheme.success),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Conta de energia',
                    style: TextStyle(
                      color: ColorsTheme.secondaryLight,
                      fontFamily: 'Livvic',
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      color: ColorsTheme.secondaryLight,
                      fontFamily: 'Livvic',
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              value,
              style: TextStyle(
                color: ColorsTheme.light,
                fontFamily: 'Inter',
                fontSize: 14,
              ),
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: onEditTransaction,
              child: const Icon(Icons.edit_square, color: ColorsTheme.primaryLight, size: 14),
            ),
            const SizedBox(width: 4),
            GestureDetector(
              onTap: onDeleteTransaction,
              child: const Icon(Icons.delete_outline, color: ColorsTheme.error, size: 14),
            ),
          ],
        ),
        const Divider(color: ColorsTheme.secondary, height: 24, thickness: 1),
      ],
    );
  }

  Widget _buildBottomBar() {
    return Container(
      color: const Color(0xff141414),
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                totalSpent.isNotEmpty ? totalSpent : 'TOTAL GASTO: R\$ 90,00',
                style: const TextStyle(
                  color: ColorsTheme.error,
                  fontFamily: 'Inter',
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Text(
                totalRemaining.isNotEmpty ? totalRemaining : 'TOTAL RESTANTE: R\$ 190,00',
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
              GestureDetector(
                onTap: onAddTransaction,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: ColorsTheme.primary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.add, color: ColorsTheme.primaryDark, size: 14),
                      SizedBox(width: 4),
                      Text(
                        'transação',
                        style: TextStyle(
                          color: ColorsTheme.primaryDark,
                          fontFamily: 'Inter',
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: onSaveEdits,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: ColorsTheme.primary, width: 1),
                  ),
                  child: const Text(
                    'salvar edições',
                    style: TextStyle(
                      color: ColorsTheme.primary,
                      fontFamily: 'Inter',
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';

class FinnancesEditTransactionWidget extends StatelessWidget {
  final VoidCallback onCancel;
  final VoidCallback onSave;

  const FinnancesEditTransactionWidget({
    super.key,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 280,
        decoration: BoxDecoration(
          color: ColorsTheme.background,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Editando transação: Conta de energia',
              style: TextStyle(
                color: ColorsTheme.light,
                fontFamily: 'Livvic',
                fontSize: 16,
                height: 1.125,
              ),
            ),
            const SizedBox(height: 16),
            _buildTextField(label: 'Descrição'),
            const SizedBox(height: 16),
            _buildTextField(label: 'Tag'),
            const SizedBox(height: 16),
            _buildTextField(label: 'Valor R\$'),
            const SizedBox(height: 20),
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
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: onSave,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        color: ColorsTheme.primary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          'salvar edição',
                          style: TextStyle(
                            color: ColorsTheme.primaryDark,
                            fontFamily: 'Inter',
                            fontSize: 14,
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

  Widget _buildTextField({required String label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: ColorsTheme.secondaryLight,
            fontFamily: 'Inter',
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 4),
        Container(height: 1, color: ColorsTheme.secondaryLight),
      ],
    );
  }
}
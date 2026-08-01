import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/finnances/presenter/widgets/custom_buttom_widget.dart';

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
                color: ColorsTheme.mutedForeground,
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
                  child: CustomButtomWidget(
                    onPressed: onCancel,
                    label: 'cancelar',
                    isDense: false,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButtomWidget(
                    onPressed: onSave,
                    label: 'salvar edição',
                    isDense: true,
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
            color: ColorsTheme.mutedForeground2,
            fontFamily: 'Inter',
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 4),
        Container(height: 1, color: ColorsTheme.mutedForeground2),
      ],
    );
  }
}

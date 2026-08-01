import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/finnances/presenter/widgets/custom_buttom_widget.dart';

class FinnancesAddTransactionWidget extends StatelessWidget {
  final VoidCallback onCancel;
  final VoidCallback onAdd;
  final TextEditingController descriptionController;
  final TextEditingController tagController;
  final TextEditingController valueController;
  const FinnancesAddTransactionWidget({
    super.key,
    required this.onCancel,
    required this.onAdd,
    required this.descriptionController,
    required this.tagController,
    required this.valueController,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 228,
        decoration: BoxDecoration(
          color: ColorsTheme.background,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Adicionar transação',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Livvic',
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            _buildTextField('Descrição', descriptionController),
            const SizedBox(height: 16),
            _buildTextField('Tag', tagController),
            const SizedBox(height: 16),
            _buildTextField('Valor R\$', valueController),
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
                    onPressed: onAdd,
                    label: 'adicionar',
                    isDense: false,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorsTheme.mutedForeground2),
        ),
        label: Text(
          label,
          style: const TextStyle(
            color: ColorsTheme.mutedForeground2,
            fontFamily: 'Inter',
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}

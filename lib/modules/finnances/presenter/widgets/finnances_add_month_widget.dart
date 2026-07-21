import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';

class FinnancesAddMonthWidget extends StatelessWidget {
  final VoidCallback onCancel;
  final VoidCallback onAdd;

  const FinnancesAddMonthWidget({
    super.key,
    required this.onCancel,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 193,
        decoration: BoxDecoration(
          color: ColorsTheme.background,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Adicionar novo mês',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Livvic',
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            _buildDropdownField(label: 'selecione o mês'),
            const SizedBox(height: 16),
            _buildDropdownField(label: 'selecione o ano'),
            const SizedBox(height: 16),
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
                    onTap: onAdd,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        color: ColorsTheme.primary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          'adicionar',
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

  Widget _buildDropdownField({required String label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: ColorsTheme.light,
            fontFamily: 'Inter',
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          height: 1,
          color: ColorsTheme.light,
        ),
      ],
    );
  }
}
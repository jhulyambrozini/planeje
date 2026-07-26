import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/dtos/drop_down_selection_dto.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/core/presenter/theme/font_sizes.dart';
import 'package:planeje/modules/core/presenter/widgets/custom_drop_down_widget.dart';

class FinnancesAddMonthWidget extends StatelessWidget {
  final VoidCallback onCancel;
  final VoidCallback onAdd;
  final List<DropDownSelectionDto> months;
  final List<DropDownSelectionDto> years;
  final DropDownSelectionDto? yearSelected;
  final DropDownSelectionDto? monthSelected;
  final void Function(DropDownSelectionDto?) onSelectYear;
  final void Function(DropDownSelectionDto?) onSelectMonth;

  const FinnancesAddMonthWidget({
    super.key,
    required this.onCancel,
    required this.onAdd,
    required this.months,
    required this.years,
    required this.yearSelected,
    required this.monthSelected,
    required this.onSelectYear,
    required this.onSelectMonth,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorsTheme.background,
      contentPadding: const EdgeInsets.all(20),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            backgroundColor: ColorsTheme.background,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: ColorsTheme.primary, width: 2),
            ),
          ),
          onPressed: onCancel,
          child: Text(
            'cancelar',
            style: TextStyle(
              color: ColorsTheme.primary,
              fontFamily: 'Inter',
              fontSize: FontSizesTheme.md,
            ),
          ),
        ),

        const SizedBox(width: 10),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            backgroundColor: ColorsTheme.primary,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: onAdd,
          child: Text(
            'adicionar',
            style: TextStyle(
              color: ColorsTheme.primaryDark,
              fontFamily: 'Inter',
              fontSize: FontSizesTheme.md,
            ),
          ),
        ),
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          Center(
            child: const Text(
              'Adicionar novo mês',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Livvic',
                fontSize: FontSizesTheme.xl,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          DropdownCustomButton<DropDownSelectionDto>(
            items: months,
            selectedValue: monthSelected,
            onSelectItem: onSelectMonth,
            titleLabel: 'Selecione o mês',
          ),
          DropdownCustomButton<DropDownSelectionDto>(
            items: years,
            selectedValue: yearSelected,
            onSelectItem: onSelectYear,
            titleLabel: 'Selecione o ano',
          ),
        ],
      ),
    );
  }
}

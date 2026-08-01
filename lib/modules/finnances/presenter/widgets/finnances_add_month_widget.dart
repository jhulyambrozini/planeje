import 'package:flutter/material.dart';
import 'package:planeje/modules/core/domain/enums/month_enum.dart';
import 'package:planeje/modules/core/domain/enums/year_enum.dart';
import 'package:planeje/modules/core/presenter/dtos/drop_down_selection_dto.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/core/presenter/theme/font_sizes.dart';
import 'package:planeje/modules/core/presenter/widgets/custom_drop_down_widget.dart';
import 'package:planeje/modules/finnances/presenter/widgets/custom_buttom_widget.dart';

class FinnancesAddMonthWidget extends StatelessWidget {
  final VoidCallback onAdd;
  final VoidCallback onCancel;

  final List<DropDownSelectionDto<MonthEnum>> months;
  final List<DropDownSelectionDto<YearEnum>> years;
  final ValueNotifier<DropDownSelectionDto<YearEnum>?> yearSelected;
  final ValueNotifier<DropDownSelectionDto<MonthEnum>?> monthSelected;
  final void Function(DropDownSelectionDto<YearEnum>?) onSelectYear;
  final void Function(DropDownSelectionDto<MonthEnum>?) onSelectMonth;

  const FinnancesAddMonthWidget({
    super.key,
    required this.onAdd,
    required this.onCancel,

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
        CustomButtomWidget(
          onPressed: onCancel,
          label: 'cancelar',
          isDense: false,
        ),
        const SizedBox(width: 10),
        CustomButtomWidget(onPressed: onAdd, label: 'concluir', isDense: true),
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
          ValueListenableBuilder(
            valueListenable: monthSelected,
            builder: (context, value, child) {
              return DropdownCustomButton<DropDownSelectionDto<MonthEnum>>(
                items: months,
                selectedValue: monthSelected.value,
                onSelectItem: onSelectMonth,
                titleLabel: 'Selecione o mês',
              );
            },
          ),
          ValueListenableBuilder(
            valueListenable: yearSelected,
            builder: (context, value, child) {
              return DropdownCustomButton<DropDownSelectionDto<YearEnum>>(
                items: years,
                selectedValue: yearSelected.value,
                onSelectItem: onSelectYear,
                titleLabel: 'Selecione o ano',
              );
            },
          ),
        ],
      ),
    );
  }
}

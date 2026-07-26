import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/dtos/drop_down_selection_dto.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/core/presenter/theme/font_sizes.dart';

class DropdownCustomButton<T extends DropDownSelectionDto> extends StatelessWidget {
  const DropdownCustomButton({
    super.key,
    required this.items,
    required this.selectedValue,
    required this.onSelectItem,
    this.showIcon = true,
    this.enabled = true,
    required this.titleLabel,
    this.hintText,
    this.hasItemSelectByDefault = false,
    this.labelWithIcon = false,
    this.icon,
    this.hasError = false,
  });

  final List<T> items;
  final T? selectedValue;
  final void Function(T? value) onSelectItem;
  final bool showIcon;
  final bool enabled;
  final String titleLabel;
  final String? hintText;
  final bool hasItemSelectByDefault;
  final bool labelWithIcon;
  final IconData? icon;
  final bool hasError;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelWithIcon)
          Row(
            children: [
              Icon(icon, size: 22, color: ColorsTheme.foreground),
              const SizedBox(width: 4),
              Text(
                titleLabel,
                style: TextStyle(
                  fontSize: FontSizesTheme.lg,
                  color: ColorsTheme.foreground,
                ),
              ),
            ],
          ),
        if (!labelWithIcon)
          Text(titleLabel, style: TextStyle(color: ColorsTheme.foreground)),
        const SizedBox(height: 5),
        Container(
          height: 32,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: ColorsTheme.background,
            border: BorderDirectional(
              bottom: BorderSide(color: ColorsTheme.mutedForeground),
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T?>(
              dropdownColor: ColorsTheme.border,
              value: selectedValue,
              hint: hintText != null
                  ? Text(
                      hintText!,
                      style: TextStyle(
                        fontSize: FontSizesTheme.sm,
                        color: Colors.grey[600],
                      ),
                    )
                  : null,
              isExpanded: true,
              icon: showIcon
                  ? const Icon(Icons.keyboard_arrow_down_rounded)
                  : const SizedBox.shrink(),
              style: TextStyle(
                fontSize: FontSizesTheme.xs,
                color: Colors.black87,
              ),
              items: hasItemSelectByDefault
                  ? [
                      ...items.map((T data) {
                        return DropdownMenuItem<T>(
                          value: data,
                          child: Text(
                            data.description,
                            style: TextStyle(
                              fontSize: FontSizesTheme.sm,
                              color: ColorsTheme.foreground,
                            ),
                          ),
                        );
                      }),
                    ]
                  : [
                      DropdownMenuItem<T?>(
                        value: null,
                        child: Text(
                          hintText ?? '--',
                          style: TextStyle(
                            fontSize: FontSizesTheme.sm,
                            color: ColorsTheme.foreground,
                          ),
                        ),
                      ),
                      ...items.map((T data) {
                        return DropdownMenuItem<T>(
                          value: data,
                          child: Text(
                            data.description,
                            style: TextStyle(
                              fontSize: FontSizesTheme.sm,
                              color: ColorsTheme.foreground,
                            ),
                          ),
                        );
                      }),
                    ],
              onChanged: enabled
                  ? (value) {
                      onSelectItem(value);
                    }
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}

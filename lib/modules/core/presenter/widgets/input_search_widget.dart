import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/core/presenter/theme/font_sizes.dart';

class InputSearchWidget extends StatefulWidget {
  final double? height;
  final TextEditingController searchController;
  final TextInputAction textInputAction;
  final VoidCallback onEditingComplete;
  final Function(String)? onChanged;
  final String hint;
  final TextInputType? keyboardType;
  final bool enabled;
  const InputSearchWidget({
    super.key,
    this.height,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.search,
    required this.onEditingComplete,
    this.onChanged,
    this.enabled = true,
    required this.hint,
    required this.searchController,
  });

  @override
  State<InputSearchWidget> createState() => _InputSearchWidgetState();
}

class _InputSearchWidgetState extends State<InputSearchWidget> {
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_changeFocus);
  }

  @override
  void dispose() {
    widget.searchController.clear();
    super.dispose();
    _focusNode
      ..removeListener(_changeFocus)
      ..dispose();
  }

  void _changeFocus() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: widget.height ?? 40,
      child: TextField(
        keyboardType: widget.keyboardType,
        focusNode: _focusNode,
        controller: widget.searchController,
        onSubmitted: (value) => widget.onEditingComplete(),
        onChanged: widget.onChanged,
        onEditingComplete: widget.onEditingComplete,
        textInputAction: widget.textInputAction,
        enabled: widget.enabled,
        style: TextStyle(
          fontSize: FontSizesTheme.md,
          color: ColorsTheme.mutedForeground,
        ),
        cursorColor: ColorsTheme.primary,

        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: TextStyle(color: ColorsTheme.mutedForeground),
          prefixIcon: const Icon(Icons.search),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorsTheme.primary),

            borderRadius: BorderRadius.circular(10),
          ),
          focusColor: ColorsTheme.primary,
          prefixIconColor: ColorsTheme.mutedForeground,
          fillColor: ColorsTheme.border,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
        ),
      ),
    );
  }
}

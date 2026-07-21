import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';

class BooksSearchWidget extends StatelessWidget {
  const BooksSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: ColorsTheme.secondaryDark,
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Row(
        children: [
          Icon(Icons.search, size: 16, color: ColorsTheme.light),
          SizedBox(width: 8),
          Text(
            'Buscar livro...',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 13,
              color: ColorsTheme.light,
            ),
          ),
        ],
      ),
    );
  }
}
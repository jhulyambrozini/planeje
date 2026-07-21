import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';

class BooksFilterWidget extends StatelessWidget {
  final int bookCount;

  const BooksFilterWidget({super.key, required this.bookCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildChip('Gênero'),
        const SizedBox(width: 8),
        _buildChip('Ano'),
        const SizedBox(width: 8),
        _buildChip('Autor'),
        const Spacer(),
        Text(
          '$bookCount livros',
          style: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 11,
            color: ColorsTheme.light,
          ),
        ),
      ],
    );
  }

  Widget _buildChip(String label) {
    return Container(
      height: 28,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: ColorsTheme.secondaryDark,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: ColorsTheme.secondary, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontSize: 11,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 4),
          const Icon(Icons.keyboard_arrow_down, size: 12, color: ColorsTheme.light),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/core/presenter/theme/font_sizes.dart';

class BooksEmptyStateWidget extends StatelessWidget {
  const BooksEmptyStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/open_finances.png', width: 200, height: 200),
        const SizedBox(height: 32),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 54),
          child: Text(
            'Adicione um livro a estante!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorsTheme.foreground,
              fontFamily: 'Livvic',
              fontSize: FontSizesTheme.lg,
            ),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

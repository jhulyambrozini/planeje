import 'package:flutter/material.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';

class BooksCardWidget extends StatelessWidget {
  final String bookName;
  final String genre;
  final String author;
  final String publisher;
  final String nationality;
  final String pages;
  final String year;

  const BooksCardWidget({
    super.key,
    required this.bookName,
    required this.genre,
    required this.author,
    required this.publisher,
    required this.nationality,
    required this.pages,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ColorsTheme.secondaryDark,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  bookName,
                  style: const TextStyle(
                    fontFamily: 'Livvic',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: ColorsTheme.primary,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  genre,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: ColorsTheme.primaryDark,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                author,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 11,
                  color: ColorsTheme.mutedForeground,
                ),
              ),
              Row(
                children: [
                  Text(
                    publisher,
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 10,
                      color: ColorsTheme.mutedForeground,
                    ),
                  ),
                  const Text(
                    ' · ',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 10,
                      color: ColorsTheme.mutedForeground2,
                    ),
                  ),
                  Text(
                    nationality,
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 10,
                      color: ColorsTheme.mutedForeground,
                    ),
                  ),
                  const Text(
                    ' · ',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 10,
                      color: ColorsTheme.mutedForeground2,
                    ),
                  ),
                  Text(
                    pages,
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 10,
                      color: ColorsTheme.mutedForeground,
                    ),
                  ),
                  const Text(
                    ' · ',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 10,
                      color: ColorsTheme.mutedForeground2,
                    ),
                  ),
                  Text(
                    year,
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 10,
                      color: ColorsTheme.mutedForeground,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

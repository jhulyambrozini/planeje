import 'package:flutter/material.dart';
import 'package:planeje/modules/books/domain/aggregates/completed_read_aggregate.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';

class BooksCardWidget extends StatelessWidget {
  final CompletedReadAggregate item;

  const BooksCardWidget({super.key, required this.item});

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
                  item.bookName,
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
                  item.gender.description,
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
                item.author.fullName,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 11,
                  color: ColorsTheme.mutedForeground,
                ),
              ),
              Row(
                children: [
                  if (item.publisher != null) ...[
                    Text(
                      item.publisher!.name,
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
                  ],
                  if (item.nacionality != null) ...[
                    Text(
                      item.nacionality!.description,
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
                  ],
                  Text(
                    item.totalPages.toString(),
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
                    item.yearOfReading,
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

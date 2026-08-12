import 'package:planeje/modules/books/domain/entities/books_author_entity.dart';
import 'package:planeje/modules/books/domain/value_objects/books_gender_vo.dart';
import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';
import 'package:planeje/modules/books/domain/entities/books_publishers_entity.dart';

class CompletedReadingsAggregate {
  final String id;
  final String bookName;
  final BooksAuthorEntity author;
  final String yearOfReading;
  final BooksGenderVo gender;
  final BooksNacionalityVo? nationality;
  final BooksPublishersEntity? publisher;
  final int totalNumberOfReads;
  final int totalPages;

  CompletedReadingsAggregate({
    required this.id,
    required this.bookName,
    required this.author,
    required this.yearOfReading,
    required this.gender,
    required this.nationality,
    required this.publisher,
    required this.totalNumberOfReads,
    required this.totalPages,
  });
}

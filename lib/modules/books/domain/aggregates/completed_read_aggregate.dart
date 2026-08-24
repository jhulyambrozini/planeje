import 'package:planeje/modules/books/domain/entities/books_author_entity.dart';
import 'package:planeje/modules/books/domain/value_objects/books_gender_vo.dart';
import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';
import 'package:planeje/modules/books/domain/entities/books_publishers_entity.dart';

class CompletedReadAggregate {
  final String id;
  final String bookName;
  final List<BooksAuthorEntity> author;
  final String yearOfReading;
  final List<BooksGenderVo> gender;
  final BooksNacionalityVo? nacionality;
  final BooksPublishersEntity? publisher;
  final int totalNumberOfReads;
  final int totalPages;

  CompletedReadAggregate({
    required this.id,
    required this.bookName,
    required this.author,
    required this.yearOfReading,
    required this.gender,
    required this.nacionality,
    required this.publisher,
    required this.totalNumberOfReads,
    required this.totalPages,
  });
}

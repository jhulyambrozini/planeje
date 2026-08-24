import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';

class BooksAuthorEntity {
  final String id;
  final String fullName;
  final String? gender;
  final BooksNacionalityVo? nacionality;

  BooksAuthorEntity({
    required this.id,
    required this.fullName,
    required this.gender,
    required this.nacionality,
  });
}

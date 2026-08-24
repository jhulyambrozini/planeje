import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';

class BooksPublishersEntity {
  final String id;
  final String name;
  final BooksNacionalityVo? nacionality;

  BooksPublishersEntity({
    required this.id,
    required this.name,
    required this.nacionality,
  });
}

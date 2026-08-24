import 'package:planeje/modules/books/domain/entities/books_author_entity.dart';
import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';

class BookAuthorMapper {
  static BooksAuthorEntity fromDb(Map<String, dynamic> row) {
    return BooksAuthorEntity(
      id: row['id'] as String,
      fullName: row['full_name'] as String,
      gender: row['gender'] as String?,
      nacionality: row['nacionality_id'] != null
          ? BooksNacionalityVo(
              id: row['nacionality_id'] as String,
              description: row['nacionality_description'] as String,
            )
          : null,
    );
  }
}

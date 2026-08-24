import 'package:planeje/modules/books/domain/entities/books_publishers_entity.dart';
import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';

class BookPublisherMapper {
  static BooksPublishersEntity fromDb(Map<String, dynamic> row) {
    return BooksPublishersEntity(
      id: row['id'] as String,
      name: row['name'],
      nacionality: row['nacionality_id'] != null
          ? BooksNacionalityVo(
              id: row['nacionality_id'] as String,
              description: row['nacionality_description'] as String,
            )
          : null,
    );
  }
}

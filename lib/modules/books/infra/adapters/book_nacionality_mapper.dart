import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';

class BookNacionalityMapper {
  static BooksNacionalityVo fromDb(Map<String, dynamic> row) {
    return BooksNacionalityVo(id: row['id'], description: row['description']);
  }
}

import 'package:planeje/modules/books/domain/value_objects/books_gender_vo.dart';

class BookGenderMapper {
  static BooksGenderVo fromDb(Map<String, dynamic> row) {
    return BooksGenderVo(id: row['id'], description: row['description']);
  }
}

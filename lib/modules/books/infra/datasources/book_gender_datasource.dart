import 'package:planeje/modules/books/domain/value_objects/books_gender_vo.dart';

abstract class BookGenderDatasource {
  Future<void> save(BooksGenderVo data);
  Future<void> updateData(BooksGenderVo data);

  Future<List<Map<String, dynamic>>> getAll(String name);

  Future<void> remove(String id);
}

import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';

abstract class BookNacionalityDatasource {
  Future<void> save(BooksNacionalityVo data);
  Future<void> updateData(BooksNacionalityVo data);

  Future<List<Map<String, dynamic>>> getAll(String name);

  Future<void> remove(String id);
}

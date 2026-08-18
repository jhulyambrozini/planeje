import 'package:planeje/modules/books/domain/entities/books_author_entity.dart';

abstract class BookAuthorDatasource {
  Future<void> save(BooksAuthorEntity data);
  Future<void> updateData(BooksAuthorEntity data);

  Future<List<Map<String, dynamic>>> getAll(String name);

  Future<void> remove(String id);
}

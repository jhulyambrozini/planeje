import 'package:planeje/modules/books/domain/entities/books_publishers_entity.dart';

abstract class BookPublisherDatasource {
  Future<void> save(BooksPublishersEntity data);
  Future<void> updateData(BooksPublishersEntity data);

  Future<List<Map<String, dynamic>>> getAll(String name);

  Future<void> remove(String id);
}

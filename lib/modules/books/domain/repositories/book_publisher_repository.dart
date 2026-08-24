import 'package:planeje/modules/books/domain/entities/books_publishers_entity.dart';
import 'package:planeje/modules/books/domain/errors/error_delete_book_publisher.dart';
import 'package:planeje/modules/books/domain/errors/error_get_book_publishers.dart';
import 'package:planeje/modules/books/domain/errors/error_save_book_publisher.dart';
import 'package:planeje/modules/books/domain/errors/error_update_book_publisher.dart';
import 'package:result_dart/src/result_dart_base.dart';

abstract class BookPublisherRepository {
  Future<ResultDart<String, SaveBookPublisherFailure>> save(
    BooksPublishersEntity data,
  );
  Future<ResultDart<List<BooksPublishersEntity>, GetBookPublishersFailure>>
  getAll(String name);
  Future<ResultDart<String, UpdateBookPublisherFailure>> updateData(
    BooksPublishersEntity data,
  );
  Future<ResultDart<String, DeleteBookPublisherFailure>> remove(String id);
}

import 'package:planeje/modules/books/domain/entities/books_author_entity.dart';
import 'package:planeje/modules/books/domain/errors/error_delete_book_authors.dart';
import 'package:planeje/modules/books/domain/errors/error_get_book_authors.dart';
import 'package:planeje/modules/books/domain/errors/error_save_book_author.dart';
import 'package:planeje/modules/books/domain/errors/error_update_book_authors.dart';
import 'package:result_dart/src/result_dart_base.dart';

abstract class BookAuthorRepository {
  Future<ResultDart<String, SaveBookAuthorFailure>> save(
    BooksAuthorEntity data,
  );
  Future<ResultDart<List<BooksAuthorEntity>, GetBookAuthorsFailure>> getAll(
    String name,
  );
  Future<ResultDart<String, UpdateBookAuthorsFailure>> updateData(
    BooksAuthorEntity data,
  );
  Future<ResultDart<String, DeleteBookAuthorsFailure>> remove(String id);
}

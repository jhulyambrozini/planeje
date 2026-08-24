import 'package:planeje/modules/books/domain/entities/books_author_entity.dart';
import 'package:planeje/modules/books/domain/errors/error_delete_book_authors.dart';
import 'package:planeje/modules/books/domain/errors/error_get_book_authors.dart';
import 'package:planeje/modules/books/domain/errors/error_save_book_author.dart';
import 'package:planeje/modules/books/domain/errors/error_update_book_authors.dart';
import 'package:planeje/modules/books/domain/repositories/book_author_repository.dart';
import 'package:planeje/modules/books/infra/adapters/book_author_mapper.dart';
import 'package:planeje/modules/books/infra/datasources/book_author_datasource.dart';
import 'package:result_dart/src/result_dart_base.dart';

class BookAuthorRepositoryImpl implements BookAuthorRepository {
  final BookAuthorDatasource _datasource;

  BookAuthorRepositoryImpl(this._datasource);

  @override
  Future<ResultDart<String, SaveBookAuthorFailure>> save(
    BooksAuthorEntity data,
  ) async {
    try {
      await _datasource.save(data);

      return Success('Sucesso');
    } catch (error) {
      return Failure(
        ErrorSaveBookAuthor(
          message: 'Ocorreu um erro ao salvar autor(a)',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<List<BooksAuthorEntity>, GetBookAuthorsFailure>> getAll(
    String name,
  ) async {
    try {
      final rows = await _datasource.getAll(name);
      final data = rows.map(BookAuthorMapper.fromDb).toList();

      return Success(data);
    } catch (error) {
      return Failure(
        ErrorGetBookAuthors(
          message: 'Ocorreu um erro ao buscar autores literários',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<String, UpdateBookAuthorsFailure>> updateData(
    BooksAuthorEntity data,
  ) async {
    try {
      await _datasource.updateData(data);

      return Success('');
    } catch (error) {
      return Failure(
        ErrorUpdateBookAuthors(
          message: 'Ocorreu um erro ao atualizar autor(a) literário',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<String, DeleteBookAuthorsFailure>> remove(String id) async {
    try {
      await _datasource.remove(id);

      return Success('');
    } catch (error) {
      return Failure(
        ErrorDeleteBookAuthors(
          message: 'Ocorreu um erro ao remover autor(a) literário',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }
}

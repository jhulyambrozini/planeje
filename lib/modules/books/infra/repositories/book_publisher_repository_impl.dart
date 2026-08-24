import 'package:planeje/modules/books/domain/entities/books_publishers_entity.dart';
import 'package:planeje/modules/books/domain/errors/error_delete_book_publisher.dart';
import 'package:planeje/modules/books/domain/errors/error_get_book_publishers.dart';
import 'package:planeje/modules/books/domain/errors/error_save_book_publisher.dart';
import 'package:planeje/modules/books/domain/errors/error_update_book_publisher.dart';
import 'package:planeje/modules/books/domain/repositories/book_Publisher_repository.dart';
import 'package:planeje/modules/books/infra/adapters/book_Publisher_mapper.dart';
import 'package:planeje/modules/books/infra/datasources/book_publisher_datasource.dart';
import 'package:result_dart/src/result_dart_base.dart';

class BookPublisherRepositoryImpl implements BookPublisherRepository {
  final BookPublisherDatasource _datasource;

  BookPublisherRepositoryImpl(this._datasource);

  @override
  Future<ResultDart<String, SaveBookPublisherFailure>> save(
    BooksPublishersEntity data,
  ) async {
    try {
      await _datasource.save(data);

      return Success('Sucesso');
    } catch (error) {
      return Failure(
        ErrorSaveBookPublisher(
          message: 'Ocorreu um erro ao salvar editora',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<List<BooksPublishersEntity>, GetBookPublishersFailure>>
  getAll(String name) async {
    try {
      final rows = await _datasource.getAll(name);
      final data = rows.map(BookPublisherMapper.fromDb).toList();

      return Success(data);
    } catch (error) {
      return Failure(
        ErrorGetBookPublishers(
          message: 'Ocorreu um erro ao buscar editoras',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<String, UpdateBookPublisherFailure>> updateData(
    BooksPublishersEntity data,
  ) async {
    try {
      await _datasource.updateData(data);

      return Success('');
    } catch (error) {
      return Failure(
        ErrorUpdateBookPublisher(
          message: 'Ocorreu um erro ao atualizar editora',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<String, DeleteBookPublisherFailure>> remove(
    String id,
  ) async {
    try {
      await _datasource.remove(id);

      return Success('');
    } catch (error) {
      return Failure(
        ErrorDeleteBookPublisher(
          message: 'Ocorreu um erro ao remover editora',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }
}

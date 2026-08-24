import 'package:planeje/modules/books/domain/errors/error_delete_book_nacionality.dart';
import 'package:planeje/modules/books/domain/errors/error_get_book_nacionalities.dart';
import 'package:planeje/modules/books/domain/errors/error_save_book_nacionality.dart';
import 'package:planeje/modules/books/domain/errors/error_update_book_nacionality.dart';
import 'package:planeje/modules/books/domain/repositories/book_nacionality_repository.dart';
import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';
import 'package:planeje/modules/books/infra/adapters/book_nacionality_mapper.dart';
import 'package:planeje/modules/books/infra/datasources/book_nacionality_datasource.dart';
import 'package:result_dart/src/result_dart_base.dart';

class BookNacionalityRepositoryImpl implements BookNacionalityRepository {
  final BookNacionalityDatasource _datasource;

  BookNacionalityRepositoryImpl(this._datasource);

  @override
  Future<ResultDart<String, SaveBookNacionalityFailure>> save(
    BooksNacionalityVo data,
  ) async {
    try {
      await _datasource.save(data);

      return Success('Sucesso');
    } catch (error) {
      return Failure(
        ErrorSaveBookNacionality(
          message: 'Ocorreu um erro ao salvar nacionalidade',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<List<BooksNacionalityVo>, GetBookNacionalitiesFailure>>
  getAll(String name) async {
    try {
      final rows = await _datasource.getAll(name);
      final data = rows.map(BookNacionalityMapper.fromDb).toList();

      return Success(data);
    } catch (error) {
      return Failure(
        ErrorGetBookNacionalities(
          message: 'Ocorreu um erro ao buscar nacionalidades',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<String, UpdateBookNacionalityFailure>> updateData(
    BooksNacionalityVo data,
  ) async {
    try {
      await _datasource.updateData(data);

      return Success('');
    } catch (error) {
      return Failure(
        ErrorUpdateBookNacionality(
          message: 'Ocorreu um erro ao atualizar nacionalidade',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<String, DeleteBookNacionalityFailure>> remove(
    String id,
  ) async {
    try {
      await _datasource.remove(id);

      return Success('');
    } catch (error) {
      return Failure(
        ErrorDeleteBookNacionality(
          message: 'Ocorreu um erro ao remover nacionalidade',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }
}

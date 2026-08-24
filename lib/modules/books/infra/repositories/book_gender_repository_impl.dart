import 'package:planeje/modules/books/domain/errors/error_delete_book_gender.dart';
import 'package:planeje/modules/books/domain/errors/error_get_book_genders.dart';
import 'package:planeje/modules/books/domain/errors/error_save_book_gender.dart';
import 'package:planeje/modules/books/domain/errors/error_update_book_gender.dart';
import 'package:planeje/modules/books/domain/repositories/book_gender_repository.dart';
import 'package:planeje/modules/books/domain/value_objects/books_gender_vo.dart';
import 'package:planeje/modules/books/infra/adapters/book_gender_mapper.dart';
import 'package:planeje/modules/books/infra/datasources/book_gender_datasource.dart';
import 'package:result_dart/src/result_dart_base.dart';

class BookGenderRepositoryImpl implements BookGenderRepository {
  final BookGenderDatasource _datasource;

  BookGenderRepositoryImpl(this._datasource);

  @override
  Future<ResultDart<String, SaveBookGenderFailure>> save(
    BooksGenderVo data,
  ) async {
    try {
      await _datasource.save(data);

      return Success('Sucesso');
    } catch (error) {
      return Failure(
        ErrorSaveBookGender(
          message: 'Ocorreu um erro ao salvar genêro literário',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<List<BooksGenderVo>, GetBookGendersFailure>> getAll(
    String name,
  ) async {
    try {
      final rows = await _datasource.getAll(name);
      final data = rows.map(BookGenderMapper.fromDb).toList();

      return Success(data);
    } catch (error) {
      return Failure(
        ErrorGetBookGenders(
          message: 'Ocorreu um erro ao buscar genêros literários',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<String, UpdateBookGenderFailure>> updateData(
    BooksGenderVo data,
  ) async {
    try {
      await _datasource.updateData(data);

      return Success('');
    } catch (error) {
      return Failure(
        ErrorUpdateBookGender(
          message: 'Ocorreu um erro ao atualizar genêro literário',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<String, DeleteBookGenderFailure>> remove(String id) async {
    try {
      await _datasource.remove(id);

      return Success('');
    } catch (error) {
      return Failure(
        ErrorDeleteBookGender(
          message: 'Ocorreu um erro ao remover genêro literário',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }
}

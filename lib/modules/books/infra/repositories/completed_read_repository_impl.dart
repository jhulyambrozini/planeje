import 'package:planeje/modules/books/domain/aggregates/completed_read_aggregate.dart';
import 'package:planeje/modules/books/domain/dtos/paging_books_dto.dart';
import 'package:planeje/modules/books/domain/errors/error_delete_book_completed_read.dart';
import 'package:planeje/modules/books/domain/errors/error_get_books_completed_read_paged.dart';
import 'package:planeje/modules/books/domain/errors/error_save_book_completed_read.dart';
import 'package:planeje/modules/books/domain/errors/error_update_book_completed_read.dart';
import 'package:planeje/modules/books/domain/repositories/completed_read_repository.dart';
import 'package:planeje/modules/books/infra/adapters/completed_reading_mapper.dart';
import 'package:planeje/modules/books/infra/datasources/completed_read_datasource.dart';
import 'package:planeje/modules/core/domain/value_objects/pagination_response_vo.dart';
import 'package:result_dart/src/result_dart_base.dart';

class CompletedReadRepositoryImpl implements CompletedReadRepository {
  final CompletedReadDatasource _datasource;

  CompletedReadRepositoryImpl(this._datasource);
  @override
  Future<
    ResultDart<
      PaginationResponseVo<CompletedReadAggregate>,
      GetBooksCompletedReadPagedFailure
    >
  >
  getPaged(PagingBooksDto dto) async {
    try {
      final response = await _datasource.getPaged(dto);
      final count = await _datasource.count(dto);

      final data = response.map(CompletedReadingMapper.fromDb).toList();

      return Success(
        PaginationResponseVo(
          data: data,
          currentPage: dto.paging.page,
          perPage: dto.paging.perPage,
          totalOfPages: count,
        ),
      );
    } catch (error) {
      return Failure(
        ErrorGetBooksPaged(
          message: 'Ocorreu um erro ao buscar histórico de leitura',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<String, SaveBookCompletedReadFailure>> save(
    CompletedReadAggregate data,
  ) async {
    try {
      await _datasource.save(data);

      return Success('Sucesso');
    } catch (error) {
      return Failure(
        ErrorSaveBookCompletedRead(
          message: 'Ocorreu um erro ao salvar leitura',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<String, UpdateBookCompletedReadFailure>> updateData(
    CompletedReadAggregate data,
  ) async {
    try {
      await _datasource.updateData(data);

      return Success('');
    } catch (error) {
      return Failure(
        ErrorUpdateBookCompletedRead(
          message: 'Ocorreu um erro ao atualizar livro',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<String, DeleteBookCompletedReadFailure>> remove(
    String id,
  ) async {
    try {
      await _datasource.remove(id);

      return Success('');
    } catch (error) {
      return Failure(
        ErrorDeleteBookCompletedReading(
          message: 'Ocorreu um erro ao remover livro lido',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }
}

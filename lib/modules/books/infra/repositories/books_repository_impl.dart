import 'package:planeje/modules/books/domain/aggregates/completed_readings_aggregate.dart';
import 'package:planeje/modules/books/domain/dtos/paging_books_dto.dart';
import 'package:planeje/modules/books/domain/errors/error_get_books_paged.dart';
import 'package:planeje/modules/books/domain/errors/error_save_full_read.dart';
import 'package:planeje/modules/books/domain/repositories/books_repository.dart';
import 'package:planeje/modules/books/infra/datasources/books_datasource.dart';
import 'package:planeje/modules/core/domain/value_objects/pagination_response_vo.dart';
import 'package:result_dart/src/result_dart_base.dart';

class BooksRepositoryImpl implements BooksRepository {
  final BooksDatasource _datasource;

  BooksRepositoryImpl(this._datasource);
  @override
  Future<
    ResultDart<
      PaginationResponseVo<CompletedReadingsAggregate>,
      GetBooksPagedFailure
    >
  >
  getPaged(PagingBooksDto dto) async {
    try {
      final response = await _datasource.getPaged(dto);
      final count = await _datasource.count();

      final data = 

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
  Future<ResultDart<String, SaveFullReadFailure>> save(
    CompletedReadingsAggregate data,
  ) async {
    try {
   await _datasource.save(
       data
      );

      return Success('Sucesso');
    } catch (error) {
      return Failure(
        ErrorSaveFullRead(
          message: 'Ocorreu um erro ao salvar leitura',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }
}

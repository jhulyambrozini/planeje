import 'package:planeje/modules/books/domain/aggregates/completed_read_aggregate.dart';
import 'package:planeje/modules/books/domain/dtos/paging_books_dto.dart';
import 'package:planeje/modules/books/domain/errors/error_delete_book_completed_read.dart';
import 'package:planeje/modules/books/domain/errors/error_get_books_completed_read_paged.dart';
import 'package:planeje/modules/books/domain/errors/error_save_book_completed_read.dart';
import 'package:planeje/modules/books/domain/errors/error_update_book_completed_read.dart';
import 'package:planeje/modules/core/domain/value_objects/pagination_response_vo.dart';
import 'package:result_dart/result_dart.dart';

abstract class CompletedReadRepository {
  Future<
    ResultDart<
      PaginationResponseVo<CompletedReadAggregate>,
      GetBooksCompletedReadPagedFailure
    >
  >
  getPaged(PagingBooksDto dto);
  Future<ResultDart<String, SaveBookCompletedReadFailure>> save(
    CompletedReadAggregate data,
  );
  Future<ResultDart<String, UpdateBookCompletedReadFailure>> updateData(
    CompletedReadAggregate data,
  );
  Future<ResultDart<String, DeleteBookCompletedReadFailure>> remove(String id);
}

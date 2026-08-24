import 'package:planeje/modules/books/domain/aggregates/completed_read_aggregate.dart';
import 'package:planeje/modules/books/domain/dtos/paging_books_dto.dart';
import 'package:planeje/modules/books/domain/errors/error_get_books_completed_read_paged.dart';
import 'package:planeje/modules/books/domain/repositories/completed_read_repository.dart';
import 'package:planeje/modules/core/domain/value_objects/pagination_response_vo.dart';
import 'package:result_dart/result_dart.dart';

abstract class GetBooksCompletedReadUsecase {
  Future<
      ResultDart<PaginationResponseVo<CompletedReadAggregate>,
          GetBooksCompletedReadPagedFailure>> call(PagingBooksDto dto);
}

class GetBooksCompletedReadUsecaseImpl implements GetBooksCompletedReadUsecase {
  final CompletedReadRepository _repository;

  GetBooksCompletedReadUsecaseImpl(this._repository);

  @override
  Future<
      ResultDart<PaginationResponseVo<CompletedReadAggregate>,
          GetBooksCompletedReadPagedFailure>> call(PagingBooksDto dto) {
    return _repository.getPaged(dto);
  }
}

import 'package:planeje/modules/books/domain/aggregates/completed_readings_aggregate.dart';
import 'package:planeje/modules/books/domain/dtos/paging_books_dto.dart';
import 'package:planeje/modules/books/domain/entities/books_author_entity.dart';
import 'package:planeje/modules/books/domain/errors/error_get_books_paged.dart';
import 'package:planeje/modules/books/domain/errors/error_save_full_read.dart';
import 'package:planeje/modules/books/domain/value_objects/books_gender_vo.dart';
import 'package:planeje/modules/core/domain/value_objects/pagination_response_vo.dart';
import 'package:result_dart/result_dart.dart';

abstract class BooksRepository {
  Future<
    ResultDart<
      PaginationResponseVo<CompletedReadingsAggregate>,
      GetBooksPagedFailure
    >
  >
  getPaged(PagingBooksDto dto);

  Future<ResultDart<String, SaveFullReadFailure>> save(
    CompletedReadingsAggregate data,
  );

  Future<ResultDart<List<BooksAuthorEntity>> getAuthors();
  Future<ResultDart<List<BooksGenderVo>> getGender();

}

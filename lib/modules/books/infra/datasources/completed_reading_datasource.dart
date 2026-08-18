import 'package:planeje/modules/books/domain/aggregates/completed_readings_aggregate.dart';
import 'package:planeje/modules/books/domain/dtos/paging_books_dto.dart';

abstract class CompletedReadingDatasource {
  Future<void> save(CompletedReadingsAggregate data);
  Future<void> updateData(CompletedReadingsAggregate data);

  Future<List<Map<String, dynamic>>> getPaged(PagingBooksDto dto);

  Future<int> count(PagingBooksDto dto);

  Future<void> remove(String id);
}

import 'package:planeje/modules/books/domain/aggregates/completed_read_aggregate.dart';
import 'package:planeje/modules/books/domain/dtos/paging_books_dto.dart';

abstract class CompletedReadDatasource {
  Future<void> save(CompletedReadAggregate data);
  Future<void> updateData(CompletedReadAggregate data);

  Future<List<Map<String, dynamic>>> getPaged(PagingBooksDto dto);

  Future<int> count(PagingBooksDto dto);

  Future<void> remove(String id);
}

import 'package:drift/drift.dart';
import 'package:planeje/modules/books/domain/aggregates/completed_readings_aggregate.dart';
import 'package:planeje/modules/books/domain/dtos/paging_books_dto.dart';
import 'package:planeje/modules/books/external/scripts/books_scrpit.dart';
import 'package:planeje/modules/books/infra/datasources/completed_reading_datasource.dart';
import 'package:planeje/modules/core/external/local_database/database.dart';
import 'package:planeje/modules/core/external/local_database/tables/completed_readings_table.dart';

part 'completed_reading_datasource_impl.g.dart';

@DriftAccessor(tables: [CompletedReadingsTable])
class CompletedReadingDatasourceImpl extends DatabaseAccessor<AppDatabase>
    with _$CompletedReadingDatasourceImplMixin
    implements CompletedReadingDatasource {
  CompletedReadingDatasourceImpl(super.attachedDatabase);

  @override
  Future<int> count(PagingBooksDto dto) async {
    final result = await customSelect(BooksScrpit.count(dto)).getSingle();
    return result.read<int>('total');
  }

  @override
  Future<List<Map<String, dynamic>>> getPaged(PagingBooksDto dto) async {
    final result = await customSelect(BooksScrpit.getPaged(dto)).get();
    return result.map((row) => row.data).toList();
  }

  @override
  Future<void> save(CompletedReadingsAggregate data) async {
    await into(completedReadingsTable).insert(
      CompletedReadingsTableCompanion.insert(
        id: data.id,
        bookName: data.bookName,
        authorId: data.author.id,
        yearOfReading: data.yearOfReading,
        genderId: data.gender.id,
        totalNumberOfReads: data.totalNumberOfReads,
        totalPages: data.totalPages,
        nationalityId: Value(data.nationality?.id),
        publisherId: Value(data.publisher?.id),
      ),
    );
  }

  @override
  Future<void> updateData(CompletedReadingsAggregate data) async {
    await update(completedReadingsTable).write(
      CompletedReadingsTableCompanion(
        bookName: Value(data.bookName),
        authorId: Value(data.author.id),
        yearOfReading: Value(data.yearOfReading),
        genderId: Value(data.gender.id),
        totalNumberOfReads: Value(data.totalNumberOfReads),
        totalPages: Value(data.totalPages),
        nationalityId: Value(data.nationality?.id),
        publisherId: Value(data.publisher?.id),
      ),
    );
  }

  @override
  Future<void> remove(String id) async {
    await (delete(completedReadingsTable)..where((e) => e.id.equals(id))).go();
  }
}

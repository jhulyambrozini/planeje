import 'package:drift/drift.dart';
import 'package:planeje/modules/books/domain/aggregates/completed_read_aggregate.dart';
import 'package:planeje/modules/books/domain/dtos/paging_books_dto.dart';
import 'package:planeje/modules/books/external/scripts/books_scrpit.dart';
import 'package:planeje/modules/books/infra/datasources/completed_read_datasource.dart';
import 'package:planeje/modules/core/external/local_database/database.dart';
import 'package:planeje/modules/core/external/local_database/tables/completed_read_author_table.dart';
import 'package:planeje/modules/core/external/local_database/tables/completed_read_gender_table.dart';
import 'package:planeje/modules/core/external/local_database/tables/completed_read_table.dart';

part 'completed_read_datasource_impl.g.dart';

@DriftAccessor(
  tables: [
    CompletedReadTable,
    CompletedReadGenderTable,
    CompletedReadAuthorTable,
  ],
)
class CompletedReadDatasourceImpl extends DatabaseAccessor<AppDatabase>
    with _$CompletedReadDatasourceImplMixin
    implements CompletedReadDatasource {
  CompletedReadDatasourceImpl(super.attachedDatabase);

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
  Future<void> save(CompletedReadAggregate data) async {
    await transaction(() async {
      await into(completedReadTable).insert(
        CompletedReadTableCompanion.insert(
          id: data.id,
          bookName: data.bookName,
          yearOfReading: data.yearOfReading,
          totalNumberOfReads: data.totalNumberOfReads,
          totalPages: data.totalPages,
          nacionalityId: Value(data.nacionality?.id),
          publisherId: Value(data.publisher?.id),
        ),
      );
      for (var item in data.gender) {
        await into(completedReadGenderTable).insert(
          CompletedReadGenderTableCompanion.insert(
            id: '', // TODO: id
            bookId: data.id,
            genderId: item.id,
          ),
        );
      }

      for (var item in data.author) {
        await into(completedReadAuthorTable).insert(
          CompletedReadAuthorTableCompanion.insert(
            id: '', // TODO: id
            bookId: data.id,
            authorId: item.id,
          ),
        );
      }
    });
  }

  @override
  Future<void> updateData(CompletedReadAggregate data) async {
    await transaction(() async {
      await update(completedReadTable).write(
        CompletedReadTableCompanion(
          bookName: Value(data.bookName),
          authorId: Value(data.author.id),
          yearOfReading: Value(data.yearOfReading),
          genderId: Value(data.gender.id),
          totalNumberOfReads: Value(data.totalNumberOfReads),
          totalPages: Value(data.totalPages),
          nacionalityId: Value(data.nacionality?.id),
          publisherId: Value(data.publisher?.id),
        ),
      );

      for (var item in data.gender) {
        await into(completedReadGenderTable).insert(
          CompletedReadGenderTableCompanion.insert(
            id: '', // TODO: id
            bookId: data.id,
            genderId: item.id,
          ),
        );
      }

      for (var item in data.author) {
        final a = CompletedReadAuthorTableCompanion.insert(
          id: '', // TODO: id
          bookId: data.id,
          authorId: item.id,
        );
        await into(completedReadAuthorTable).insert(
          a,
          onConflict: DoUpdate(
            (old) => a,
            target: [completedReadAuthorTable.authorId],
          ),
        );
      }
    });
  }

  @override
  Future<void> remove(String id) async {
    await (delete(completedReadTable)..where((e) => e.id.equals(id))).go();
  }
}

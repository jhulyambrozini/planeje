import 'package:drift/drift.dart';
import 'package:planeje/modules/books/domain/entities/books_publishers_entity.dart';
import 'package:planeje/modules/books/infra/datasources/book_publisher_datasource.dart';
import 'package:planeje/modules/core/external/local_database/database.dart';
import 'package:planeje/modules/core/external/local_database/tables/books_publishers_table.dart';

part 'book_publisher_datasource_impl.g.dart';

@DriftAccessor(tables: [BooksPublishersTable])
class BookPublisherDatasourceImpl extends DatabaseAccessor<AppDatabase>
    with _$BookPublisherDatasourceImplMixin
    implements BookPublisherDatasource {
  BookPublisherDatasourceImpl(super.attachedDatabase);

  @override
  Future<List<Map<String, dynamic>>> getAll(String name) async {
    final response =
        await (select(booksPublishersTable)..where((ele) {
              if (name.isNotEmpty) {
                return ele.name.equals(name);
              }
              return Constant(true);
            }))
            .get();
    return response.map((ele) => ele.toJson()).toList();
  }

  @override
  Future<void> remove(String id) async {
    await (delete(booksPublishersTable)..where((e) => e.id.equals(id))).go();
  }

  @override
  Future<void> save(BooksPublishersEntity data) async {
    await into(booksPublishersTable).insert(
      BooksPublishersTableCompanion.insert(
        id: data.id,
        name: data.name,
        nationalityId: Value(data.nationality?.id),
      ),
    );
  }

  @override
  Future<void> updateData(BooksPublishersEntity data) async {
    await update(booksPublishersTable).write(
      BooksPublishersTableCompanion(
        name: Value.absentIfNull(data.name),
        nationalityId: Value.absentIfNull(data.nationality?.id),
      ),
    );
  }
}

import 'package:drift/drift.dart';
import 'package:planeje/modules/books/domain/entities/books_author_entity.dart';
import 'package:planeje/modules/books/infra/datasources/book_author_datasource.dart';
import 'package:planeje/modules/core/external/local_database/database.dart';
import 'package:planeje/modules/core/external/local_database/tables/books_author_table.dart';

part 'book_author_datasource_impl.g.dart';

@DriftAccessor(tables: [BooksAuthorTable])
class BookAuthorDatasourceImpl extends DatabaseAccessor<AppDatabase>
    with _$BookAuthorDatasourceImplMixin
    implements BookAuthorDatasource {
  BookAuthorDatasourceImpl(super.attachedDatabase);

  @override
  Future<List<Map<String, dynamic>>> getAll(String name) async {
    final response =
        await (select(booksAuthorTable)..where((ele) {
              if (name.isNotEmpty) {
                return ele.fullName.equals(name);
              }
              return Constant(true);
            }))
            .get();
    return response.map((ele) => ele.toJson()).toList();
  }

  @override
  Future<void> remove(String id) async {
    await (delete(booksAuthorTable)..where((e) => e.id.equals(id))).go();
  }

  @override
  Future<void> save(BooksAuthorEntity data) async {
    await into(booksAuthorTable).insert(
      BooksAuthorTableCompanion.insert(
        id: data.id,
        fullName: data.fullName,
        gender: Value(data.gender),
        nacionality: Value(data.nacionality?.id),
      ),
    );
  }

  @override
  Future<void> updateData(BooksAuthorEntity data) async {
    await update(booksAuthorTable).write(
      BooksAuthorTableCompanion(
        fullName: Value.absentIfNull(data.fullName),
        gender: Value.absentIfNull(data.gender),
        nacionality: Value.absentIfNull(data.nacionality?.id),
      ),
    );
  }
}

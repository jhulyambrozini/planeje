import 'package:drift/drift.dart';
import 'package:planeje/modules/books/domain/value_objects/books_gender_vo.dart';
import 'package:planeje/modules/books/infra/datasources/book_gender_datasource.dart';
import 'package:planeje/modules/core/external/local_database/database.dart';
import 'package:planeje/modules/core/external/local_database/tables/books_gender_table.dart';

part 'book_gender_datasource_impl.g.dart';

@DriftAccessor(tables: [BooksGenderTable])
class BookGenderDatasourceImpl extends DatabaseAccessor<AppDatabase>
    with _$BookGenderDatasourceImplMixin
    implements BookGenderDatasource {
  BookGenderDatasourceImpl(super.attachedDatabase);

  @override
  Future<List<Map<String, dynamic>>> getAll(String name) async {
    final response =
        await (select(booksGenderTable)..where((ele) {
              if (name.isNotEmpty) {
                return ele.description.equals(name);
              }
              return Constant(true);
            }))
            .get();
    return response.map((ele) => ele.toJson()).toList();
  }

  @override
  Future<void> remove(String id) async {
    await (delete(booksGenderTable)..where((e) => e.id.equals(id))).go();
  }

  @override
  Future<void> save(BooksGenderVo data) async {
    await into(booksGenderTable).insert(
      BooksGenderTableCompanion.insert(
        id: data.id,
        description: data.description,
      ),
    );
  }

  @override
  Future<void> updateData(BooksGenderVo data) async {
    await update(booksGenderTable).write(
      BooksGenderTableCompanion(
        description: Value.absentIfNull(data.description),
      ),
    );
  }
}

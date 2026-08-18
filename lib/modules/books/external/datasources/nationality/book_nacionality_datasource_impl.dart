import 'package:drift/drift.dart';
import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';
import 'package:planeje/modules/books/infra/datasources/book_nacionality_datasource.dart';
import 'package:planeje/modules/core/external/local_database/database.dart';
import 'package:planeje/modules/core/external/local_database/tables/books_nacionality_table.dart';

part 'book_nacionality_datasource_impl.g.dart';

@DriftAccessor(tables: [BooksNacionalityTable])
class BookNacionalityDatasourceImpl extends DatabaseAccessor<AppDatabase>
    with _$BookNacionalityDatasourceImplMixin
    implements BookNacionalityDatasource {
  BookNacionalityDatasourceImpl(super.attachedDatabase);

  @override
  Future<List<Map<String, dynamic>>> getAll(String name) async {
    final response =
        await (select(booksNacionalityTable)..where((ele) {
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
    await (delete(booksNacionalityTable)..where((e) => e.id.equals(id))).go();
  }

  @override
  Future<void> save(BooksNacionalityVo data) async {
    await into(booksNacionalityTable).insert(
      BooksNacionalityTableCompanion.insert(
        id: data.id,
        description: data.description,
      ),
    );
  }

  @override
  Future<void> updateData(BooksNacionalityVo data) async {
    await update(booksNacionalityTable).write(
      BooksNacionalityTableCompanion(
        description: Value.absentIfNull(data.description),
      ),
    );
  }
}

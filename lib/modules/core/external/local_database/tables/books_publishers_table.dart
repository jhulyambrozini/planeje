import 'package:drift/drift.dart';
import 'package:planeje/modules/core/external/local_database/constants/table_name.dart';
import 'package:planeje/modules/core/external/local_database/tables/books_nacionality_table.dart';

class BooksPublishersTable extends Table {
  @override
  String? get tableName => TableName.booksPublisher;

  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get nationalityId => text()
      .references(BooksNacionalityTable, #id, onDelete: KeyAction.cascade)
      .nullable()();
  DateTimeColumn get deletedAt => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

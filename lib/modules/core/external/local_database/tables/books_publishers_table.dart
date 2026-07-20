import 'package:drift/drift.dart';
import 'package:planeje/modules/core/external/local_database/constants/table_name.dart';

class BooksPublishersTable extends Table {
  @override
  String? get tableName => TableName.booksPublesher;

  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get nationality => text().nullable()();
  DateTimeColumn get deletedAt => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

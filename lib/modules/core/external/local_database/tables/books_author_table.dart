import 'package:drift/drift.dart';
import 'package:planeje/modules/core/external/local_database/constants/table_name.dart';

class BooksAuthorTable extends Table {
  @override
  String? get tableName => TableName.booksAuthor;

  TextColumn get id => text()();
  TextColumn get fullName => text()();
  TextColumn get gender => text().nullable()();
  TextColumn get nationality => text().nullable()();
  DateTimeColumn get deletedAt => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

import 'package:drift/drift.dart';
import 'package:planeje/modules/core/external/local_database/constants/table_name.dart';
import 'package:planeje/modules/core/external/local_database/tables/books_nacionality_table.dart';
import 'package:planeje/modules/core/external/local_database/tables/books_publishers_table.dart';

class CompletedReadTable extends Table {
  @override
  String? get tableName => TableName.completedRead;

  TextColumn get id => text()();
  TextColumn get bookName => text()();
  TextColumn get yearOfReading => text()();
  TextColumn get nacionalityId => text().nullable().references(
    BooksNacionalityTable,
    #id,
    onDelete: KeyAction.cascade,
  )();
  TextColumn get publisherId => text().nullable().references(
    BooksPublishersTable,
    #id,
    onDelete: KeyAction.cascade,
  )();
  IntColumn get totalNumberOfReads => integer()();
  IntColumn get totalPages => integer()();
  DateTimeColumn get deletedAt => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

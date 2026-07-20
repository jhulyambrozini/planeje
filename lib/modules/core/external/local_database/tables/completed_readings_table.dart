import 'package:drift/drift.dart';
import 'package:planeje/modules/core/external/local_database/constants/table_name.dart';

class CompletedReadingsTable extends Table {
  @override
  String? get tableName => TableName.completedReadings;

  TextColumn get id => text()();
  TextColumn get bookName => text()();
  TextColumn get authorId => text()();
  TextColumn get yearOfReading => text()();
  TextColumn get genderId => text()();
  TextColumn get nationalityId => text().nullable()();
  TextColumn get publisherId => text().nullable()();
  IntColumn get totalNumberOfReads => integer()();
  IntColumn get totalPages => integer()();
  DateTimeColumn get deletedAt => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

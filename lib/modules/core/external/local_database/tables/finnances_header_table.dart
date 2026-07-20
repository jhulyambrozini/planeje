import 'package:drift/drift.dart';
import 'package:planeje/modules/core/external/local_database/constants/table_name.dart';

class FinnacesHeaderTable extends Table {
  @override
  String? get tableName => TableName.finnancesHeader;

  TextColumn get id => text()();
  IntColumn get year => integer()();
  TextColumn get month => text()();
  TextColumn get totalReceived => text()();
  TextColumn get totalSpent => text()();
  DateTimeColumn get deletedAt => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

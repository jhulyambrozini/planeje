import 'package:drift/drift.dart';
import 'package:planeje/modules/core/external/local_database/constants/table_name.dart';

class MenstrualCycleTrackingTable extends Table {
  @override
  String? get tableName => TableName.menstrualCycleTrackingTable;
  TextColumn get id => text()();

  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime().nullable()();
  IntColumn get daysDuration => integer().nullable()();
  BoolColumn get predictve => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

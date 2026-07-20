import 'package:drift/drift.dart';
import 'package:planeje/modules/core/external/local_database/constants/table_name.dart';

class MesnstrualCycleUserInfosTable extends Table {
  @override
  String? get tableName => TableName.mesnstrualCycleUserInfosTable;
  TextColumn get id => text()();

  TextColumn get name => text().withLength(min: 1, max: 100)();
  IntColumn get averageCycleDuration => integer().nullable()();
  IntColumn get durationMenstruation => integer().nullable()();
  BoolColumn get notificationsActive =>
      boolean().withDefault(const Constant(true))();
  TextColumn get contraceptiveType => text().nullable()();
  DateTimeColumn get contraceptiveStartDate => dateTime().nullable()();
  IntColumn get posologia => integer().nullable()();
  BoolColumn get makePause => boolean().withDefault(const Constant(true))();
  IntColumn get daysPause => integer().withDefault(const Constant(7))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

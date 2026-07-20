import 'package:drift/drift.dart';
import 'package:planeje/modules/core/external/local_database/constants/table_name.dart';

class RecordsAntiomceptivePill extends Table {
  @override
  String? get tableName => TableName.recordsAntiomceptivePill;
  TextColumn get id => text()();
  DateTimeColumn get registerDate => dateTime()();
  DateTimeColumn get registerHour => dateTime()();
  BoolColumn get taked => boolean().withDefault(const Constant(false))();
  BoolColumn get inHour => boolean().withDefault(const Constant(true))();
  IntColumn get delayMinutes => integer().nullable()();
  BoolColumn get sheForgot => boolean().withDefault(const Constant(false))();
  BoolColumn get dayInPause => boolean().withDefault(const Constant(false))();
  IntColumn get medicationDay => integer().nullable()();
  BoolColumn get isFirstDoseBlisterPack =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get isLastDoseInBlisterPack =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get isMenstruationDay =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get notificationSent =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get notificationSeer =>
      boolean().withDefault(const Constant(false))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

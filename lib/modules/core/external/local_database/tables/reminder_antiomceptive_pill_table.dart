import 'package:drift/drift.dart';
import 'package:planeje/modules/core/external/local_database/constants/table_name.dart';

class ReminderAntiomceptivePill extends Table {
  @override
  Set<Column<Object>>? get primaryKey => {id};
  @override
  String? get tableName => TableName.reminderAntiomceptivePill;
  TextColumn get id => text()();

  DateTimeColumn get firstRememberTime => dateTime().nullable()();
  DateTimeColumn get secondRememberTime => dateTime().nullable()();
  DateTimeColumn get thirdRememberTime => dateTime().nullable()();

  BoolColumn get active => boolean().withDefault(const Constant(true))();
  IntColumn get minutesInAdvance => integer().withDefault(const Constant(15))();

  BoolColumn get monday => boolean().withDefault(const Constant(true))();
  BoolColumn get tuesday => boolean().withDefault(const Constant(true))();
  BoolColumn get wednesday => boolean().withDefault(const Constant(true))();
  BoolColumn get thursday => boolean().withDefault(const Constant(true))();
  BoolColumn get friday => boolean().withDefault(const Constant(true))();
  BoolColumn get saturday => boolean().withDefault(const Constant(true))();
  BoolColumn get sunday => boolean().withDefault(const Constant(true))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  DateTimeColumn get deletedAt => dateTime().nullable()();
}

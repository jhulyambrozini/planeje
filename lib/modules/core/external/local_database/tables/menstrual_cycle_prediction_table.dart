import 'package:drift/drift.dart';
import 'package:planeje/modules/core/external/local_database/constants/table_name.dart';

class MenstrualCyclePrediction extends Table {
  @override
  String? get tableName => TableName.menstrualCyclePrediction;
  TextColumn get id => text()();

  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

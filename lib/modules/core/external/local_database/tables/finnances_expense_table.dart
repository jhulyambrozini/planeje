import 'package:drift/drift.dart';
import 'package:planeje/modules/core/external/local_database/constants/table_name.dart';

class FinnancesExpenseTable extends Table {
  @override
  String? get tableName => TableName.finnancesExpense;

  TextColumn get id => text()();
  TextColumn get finnacesId => text()();
  IntColumn get tag => integer()();
  TextColumn get description => text()();
  TextColumn get value => text()();
  DateTimeColumn get deletedAt => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

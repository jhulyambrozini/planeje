import 'package:drift/drift.dart';
import 'package:planeje/modules/core/external/local_database/constants/table_name.dart';
import 'package:planeje/modules/core/external/local_database/tables/finnances_header_table.dart';

class FinnancesExpenseTable extends Table {
  @override
  String? get tableName => TableName.finnancesExpense;

  TextColumn get id => text()();
  TextColumn get finnacesId => text().references(
    FinnacesHeaderTable,
    #id,
    onDelete: KeyAction.cascade,
  )();
  TextColumn get tag => text()();
  TextColumn get description => text()();
  TextColumn get value => text()();
  BoolColumn get isCashInflow => boolean()();
  DateTimeColumn get deletedAt => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

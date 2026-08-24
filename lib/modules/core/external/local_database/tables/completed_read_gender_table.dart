import 'package:drift/drift.dart';
import 'package:planeje/modules/core/external/local_database/constants/table_name.dart';
import 'package:planeje/modules/core/external/local_database/tables/completed_read_table.dart';

class CompletedReadGenderTable extends Table {
  @override
  String? get tableName => TableName.completedGenderRead;

  TextColumn get id => text()();
  TextColumn get bookId =>
      text().references(CompletedReadTable, #id, onDelete: KeyAction.cascade)();

  TextColumn get genderId => text()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

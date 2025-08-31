import 'package:drift/drift.dart';
import 'package:planeje/external/local_database/constants/table_name.dart';

class TokensTable extends Table {
  @override
  String? get tableName => TableName.tokens;

  IntColumn get id => integer().autoIncrement()();
  TextColumn get deviceToken => text().withDefault(const Constant(''))();
  TextColumn get userToken => text().withDefault(const Constant(''))();
}

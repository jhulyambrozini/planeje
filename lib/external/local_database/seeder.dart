import 'package:drift/drift.dart';
import 'package:planeje/external/local_database/database.dart';
import 'package:planeje/external/local_database/tables/tokens_table.dart';

part 'seeder.g.dart';

@DriftAccessor(tables: [TokensTable])
abstract class Seeder extends DatabaseAccessor<AppDatabase> with _$SeederMixin {
  Seeder(AppDatabase db) : super(db);

  Future<void> handle();
}

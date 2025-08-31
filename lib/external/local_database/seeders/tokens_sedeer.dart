import 'package:planeje/external/local_database/database.dart';
import 'package:planeje/external/local_database/seeder.dart';

class TokensSeeder extends Seeder {
  TokensSeeder(AppDatabase db) : super(db);

  @override
  Future<void> handle() async {
    await into(tokensTable).insert(TokensTableCompanion.insert());

    return;
  }
}

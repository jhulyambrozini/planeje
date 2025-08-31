import 'package:drift/drift.dart';
import 'package:planeje/core/exceptions/not_found_in_database_exception.dart';
import 'package:planeje/external/local_database/constants/table_name.dart';
import 'package:planeje/external/local_database/database.dart';
import 'package:planeje/external/local_database/datasource/contracts/tokens_datasource.dart';
import 'package:planeje/external/local_database/tables/tokens_table.dart';
import 'package:planeje/core/models/tokens_model.dart';

part 'tokens_datasource_impl.g.dart';

@DriftAccessor(tables: [TokensTable])
class TokensDatasourceImpl extends DatabaseAccessor<AppDatabase>
    with _$TokensDatasourceImplMixin
    implements TokensDatasource {
  TokensDatasourceImpl(super.attachedDatabase);

  @override
  Future<Map<String, dynamic>> getTokens() async {
    final response = await (select(tokensTable)).getSingleOrNull();
    if (response == null) {
      throw NotFoundInDatabaseException(
        message: "Não foram encontrados tokens para esse dispositivo",
      );
    }
    return response.toJson();
  }

  @override
  Future<TokensModel> upsert(TokensModel tokens) async {
    await customStatement("""
        INSERT OR REPLACE INTO ${TableName.tokens} (id, user_token, device_token) 
        VALUES(
          (SELECT id FROM ${TableName.tokens}), 
          '${tokens.userToken}', 
          '${tokens.deviceToken}'
        )
      """);

    return tokens;
  }

  @override
  Future<void> updateUserToken(String userToken) async {
    await customStatement("""
        UPDATE ${TableName.tokens} 
        SET user_token = '$userToken'
        WHERE id = (SELECT id FROM ${TableName.tokens})
      """);

    return;
  }

  @override
  Future<void> updateDeviceToken(String deviceToken) async {
    await customStatement("""
        UPDATE ${TableName.tokens} 
        SET device_token = '$deviceToken'
        WHERE id = (SELECT id FROM ${TableName.tokens})
      """);

    return;
  }
}

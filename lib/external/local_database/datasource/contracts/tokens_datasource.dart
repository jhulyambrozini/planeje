import 'package:planeje/core/models/tokens_model.dart';

abstract class TokensDatasource {
  Future<Map<String, dynamic>> getTokens();

  Future<void> updateUserToken(String userToken);

  Future<void> updateDeviceToken(String deviceToken);

  Future<TokensModel> upsert(TokensModel tokens);
}

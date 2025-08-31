import 'package:planeje/core/models/result_action_model.dart';
import 'package:planeje/core/models/tokens_model.dart';

abstract class TokensFromLocalDatabaseRepository {
  Future<ResultActionModel<TokensModel>> getTokens();

  Future<bool> logout();

  Future<bool> setDeviceToken(String value);

  Future<bool> setUserToken(String value);
}

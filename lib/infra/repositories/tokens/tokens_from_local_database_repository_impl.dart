import 'package:planeje/external/local_database/datasource/contracts/tokens_datasource.dart';
import 'package:planeje/infra/repositories/tokens/tokens_from_local_databse_repository.dart';
import 'package:planeje/core/models/result_action_model.dart';
import 'package:planeje/core/models/tokens_model.dart';

class TokensFromLocalDatabaseRepositoryImpl
    implements TokensFromLocalDatabaseRepository {
  final TokensDatasource _datasource;

  TokensFromLocalDatabaseRepositoryImpl(this._datasource);

  @override
  Future<ResultActionModel<TokensModel>> getTokens() async {
    try {
      final response = await _datasource.getTokens();

      final tokens = TokensModel.fromMap(response);
      return ResultActionModel.success(data: tokens);
    } catch (error) {
      return ResultActionModel.failure('Ocorreu um erro ao autenticar.');
    }
  }

  @override
  Future<bool> logout() async {
    try {
      await _datasource.updateDeviceToken('');
      await _datasource.updateUserToken('');
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> setDeviceToken(String value) async {
    try {
      await _datasource.updateDeviceToken(value);

      return true;
    } catch (error) {
      return false;
    }
  }

  @override
  Future<bool> setUserToken(String value) async {
    try {
      await _datasource.updateUserToken(value);
      return true;
    } catch (error) {
      return false;
    }
  }
}

import 'package:flutter/widgets.dart';
import 'package:planeje/infra/repositories/tokens/tokens_from_local_databse_repository.dart';

class AuthOrHomeViewModel with ChangeNotifier {
  final TokensFromLocalDatabaseRepository _tokensFromDatabaseRepository;

  AuthOrHomeViewModel(this._tokensFromDatabaseRepository);

  bool isLoading = true;
  bool isAuthenticated = false;
  bool isDeviceAuthenticate = false;
  bool isMarkeAuthenticated = false;

  bool get shouldGoToHomeScreen => isAuthenticated && isDeviceAuthenticate;

  Future<void> checkAuthentication() async {
    final tokens = await _tokensFromDatabaseRepository.getTokens();

    if (!tokens.success) {
      isLoading = false;
      notifyListeners();
      return;
    }

    isAuthenticated = tokens.data!.userToken.isNotEmpty;
    isDeviceAuthenticate = tokens.data!.deviceToken.isNotEmpty;
    isLoading = false;
    notifyListeners();
  }
}

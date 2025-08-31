import 'package:planeje/external/local_database/database.dart';
import 'package:planeje/core/dependency_injector/dependency_injector.dart';
import 'package:planeje/external/local_database/datasource/contracts/tokens_datasource.dart';
import 'package:planeje/external/local_database/datasource/tokens_datasource_impl.dart';
import 'package:planeje/infra/repositories/tokens/tokens_from_local_database_repository_impl.dart';
import 'package:planeje/infra/repositories/tokens/tokens_from_local_databse_repository.dart';
import 'package:planeje/viewmodels/finances_viewmodel.dart';
import 'package:planeje/viewmodels/home_or_auth_viewmodel.dart';
import 'package:planeje/viewmodels/user_login_viewmodel.dart';
import 'package:planeje/viewmodels/user_register_viewmodel.dart';

class Injector {
  static initialize() {
    final injector = DependencyInjectorImpl();
    final instance = injector.instance;

    instance.addSingleton<AppDatabase>(AppDatabase.new);

    instance.add<TokensDatasource>(TokensDatasourceImpl.new);
    instance.add<TokensFromLocalDatabaseRepository>(
      TokensFromLocalDatabaseRepositoryImpl.new,
    );

    instance.add(AuthOrHomeViewModel.new);
    instance.add(UserLoginViewmodel.new);
    instance.add(UserRegisterViewmodel.new);
    instance.add(FinnacesViewmodel.new);

    instance.finish();
  }
}

import 'package:flutter_modular/flutter_modular.dart';
import 'package:planeje/modules/core/external/local_database/database.dart';

class CoreModule extends Module {
  @override
  void binds(i) {}

  @override
  void exportedBinds(Injector i) {
    i.addSingleton<AppDatabase>(() => AppDatabase());
  }
}

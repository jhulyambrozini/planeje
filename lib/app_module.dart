import 'package:flutter_modular/flutter_modular.dart';
import 'package:planeje/modules/books/books_module.dart';
import 'package:planeje/modules/core/core_module.dart';
import 'package:planeje/modules/finnances/finnances_module.dart';
import 'package:planeje/modules/home/home_module.dart';
import 'package:planeje/modules/menstrual_cycle/menstrual_cycle_module.dart';
import 'package:planeje/routes_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];
  @override
  void routes(r) {
    r.module(RoutesModule.home, module: HomeModule());
    r.module(RoutesModule.books, module: BooksModule());
    r.module(RoutesModule.finnances, module: FinnancesModule());
    r.module(RoutesModule.menstrualCycle, module: MenstrualCycleModule());
  }
}

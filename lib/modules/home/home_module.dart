import 'package:flutter_modular/flutter_modular.dart';
import 'package:planeje/modules/core/core_module.dart';
import 'package:planeje/modules/home/presenter/views/home_view.dart';

class HomeModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  void routes(r) {
    r.child("/", child: (context) => const HomeView());
  }
}

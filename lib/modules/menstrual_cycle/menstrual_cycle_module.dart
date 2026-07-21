import 'package:flutter_modular/flutter_modular.dart';
import 'package:planeje/modules/core/core_module.dart';
import 'package:planeje/modules/menstrual_cycle/presenter/views/menstrual_cycle_view.dart';

class MenstrualCycleModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child("/", child: (context) => const MenstrualCycleView());
  }
}

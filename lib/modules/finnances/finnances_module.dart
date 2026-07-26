import 'package:flutter_modular/flutter_modular.dart';
import 'package:planeje/modules/core/core_module.dart';
import 'package:planeje/modules/finnances/domain/get_finnances_paged_usecase.dart';
import 'package:planeje/modules/finnances/presenter/viewmodels/finnances_viewmodel.dart';
import 'package:planeje/modules/finnances/presenter/views/finnances_view.dart';

class FinnancesModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];
  @override
  void binds(i) {
    i.add<FinnacesViewmodel>(FinnacesViewmodel.new);
    i.add<GetFinnancesPagedUsecase>(GetFinnancesPagedUsecaseImpl.new);
  }

  @override
  void routes(r) {
    r.child("/", child: (context) => const FinnancesView());
  }
}

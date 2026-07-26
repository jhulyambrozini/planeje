import 'package:flutter_modular/flutter_modular.dart';
import 'package:planeje/modules/core/core_module.dart';
import 'package:planeje/modules/finnances/domain/get_finnances_paged_usecase.dart';
import 'package:planeje/modules/finnances/domain/repositories/finnances_repository.dart';
import 'package:planeje/modules/finnances/domain/save_finnance_header_usecase.dart';
import 'package:planeje/modules/finnances/external/datasources/finnances_datasource_impl.dart';
import 'package:planeje/modules/finnances/external/scripts/finnances_sql.dart';
import 'package:planeje/modules/finnances/infra/datasources/finnances_datasource.dart';
import 'package:planeje/modules/finnances/infra/repositories/finnances_repository_impl.dart';
import 'package:planeje/modules/finnances/presenter/viewmodels/finnances_viewmodel.dart';
import 'package:planeje/modules/finnances/presenter/views/finnances_view.dart';

class FinnancesModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];
  @override
  void binds(i) {
    i.add<FinnancesSql>(FinnancesSql.new);

    i.add<FinnancesDatasource>(FinnancesDatasourceImpl.new);

    i.add<FinnancesRepository>(FinnancesRepositoryImpl.new);

    i.add<GetFinnancesPagedUsecase>(GetFinnancesPagedUsecaseImpl.new);
    i.add<SaveFinnanceHeaderUsecase>(SaveFinnanceHeaderUsecaseImpl.new);
    i.add<FinnancesViewmodel>(FinnancesViewmodel.new);
  }

  @override
  void routes(r) {
    r.child("/", child: (context) => const FinnancesView());
  }
}

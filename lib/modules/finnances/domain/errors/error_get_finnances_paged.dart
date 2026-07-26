import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class GetFinnancesPagedFailure extends ErrorGeneralContract {
  GetFinnancesPagedFailure({
    super.title = 'Buscar Histórico financeiro',
    required super.message,
    required super.description,
  });
}

class ErrorGetFinnancesPaged extends GetFinnancesPagedFailure {
  ErrorGetFinnancesPaged({required super.message, super.description});
}

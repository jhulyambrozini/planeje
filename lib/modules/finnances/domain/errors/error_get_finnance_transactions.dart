import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class GetFinnanceTransactionFailure extends ErrorGeneralContract {
  GetFinnanceTransactionFailure({
    super.title = 'Buscar financeiro do mês',
    required super.message,
    required super.description,
  });
}

class ErrorGetFinnanceTransaction extends GetFinnanceTransactionFailure {
  ErrorGetFinnanceTransaction({required super.message, super.description});
}

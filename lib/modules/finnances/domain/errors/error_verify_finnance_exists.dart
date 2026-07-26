import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class VerifyFinnanceExistsFailure extends ErrorGeneralContract {
  VerifyFinnanceExistsFailure({
    super.title = 'Verificar se financeiro já existe',
    required super.message,
    required super.description,
  });
}

class ErrorVerifyFinnanceExists extends VerifyFinnanceExistsFailure {
  ErrorVerifyFinnanceExists({required super.message, super.description});
}

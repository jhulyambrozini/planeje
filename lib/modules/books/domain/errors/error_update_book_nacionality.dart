import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class UpdateBookNacionalityFailure extends ErrorGeneralContract {
  UpdateBookNacionalityFailure({
    super.title = 'Atualizar nacionalidade',
    required super.message,
    required super.description,
  });
}

class ErrorUpdateBookNacionality extends UpdateBookNacionalityFailure {
  ErrorUpdateBookNacionality({required super.message, super.description});
}

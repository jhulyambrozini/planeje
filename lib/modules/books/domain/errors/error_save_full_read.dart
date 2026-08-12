import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class SaveFullReadFailure extends ErrorGeneralContract {
  SaveFullReadFailure({
    super.title = 'Salvar livro lido',
    required super.message,
    required super.description,
  });
}

class ErrorSaveFullRead extends SaveFullReadFailure {
  ErrorSaveFullRead({required super.message, super.description});
}

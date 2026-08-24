import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class SaveBookCompletedReadFailure extends ErrorGeneralContract {
  SaveBookCompletedReadFailure({
    super.title = 'Salvar livro lido',
    required super.message,
    required super.description,
  });
}

class ErrorSaveBookCompletedRead extends SaveBookCompletedReadFailure {
  ErrorSaveBookCompletedRead({required super.message, super.description});
}

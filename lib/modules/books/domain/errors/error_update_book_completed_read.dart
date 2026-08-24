import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class UpdateBookCompletedReadFailure extends ErrorGeneralContract {
  UpdateBookCompletedReadFailure({
    super.title = 'Atualizar livro lido',
    required super.message,
    required super.description,
  });
}

class ErrorUpdateBookCompletedRead extends UpdateBookCompletedReadFailure {
  ErrorUpdateBookCompletedRead({required super.message, super.description});
}

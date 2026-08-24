import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class DeleteBookCompletedReadFailure extends ErrorGeneralContract {
  DeleteBookCompletedReadFailure({
    super.title = 'Deletar livro lido',
    required super.message,
    required super.description,
  });
}

class ErrorDeleteBookCompletedReading extends DeleteBookCompletedReadFailure {
  ErrorDeleteBookCompletedReading({required super.message, super.description});
}

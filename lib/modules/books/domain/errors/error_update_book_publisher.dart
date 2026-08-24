import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class UpdateBookPublisherFailure extends ErrorGeneralContract {
  UpdateBookPublisherFailure({
    super.title = 'Atualizar editora',
    required super.message,
    required super.description,
  });
}

class ErrorUpdateBookPublisher extends UpdateBookPublisherFailure {
  ErrorUpdateBookPublisher({required super.message, super.description});
}

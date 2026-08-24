import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class DeleteBookPublisherFailure extends ErrorGeneralContract {
  DeleteBookPublisherFailure({
    super.title = 'Deletar editora',
    required super.message,
    required super.description,
  });
}

class ErrorDeleteBookPublisher extends DeleteBookPublisherFailure {
  ErrorDeleteBookPublisher({required super.message, super.description});
}

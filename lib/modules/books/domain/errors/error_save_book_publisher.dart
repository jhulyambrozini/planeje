import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class SaveBookPublisherFailure extends ErrorGeneralContract {
  SaveBookPublisherFailure({
    super.title = 'Salvar editora',
    required super.message,
    required super.description,
  });
}

class ErrorSaveBookPublisher extends SaveBookPublisherFailure {
  ErrorSaveBookPublisher({required super.message, super.description});
}

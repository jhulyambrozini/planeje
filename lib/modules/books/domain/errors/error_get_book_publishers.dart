import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class GetBookPublishersFailure extends ErrorGeneralContract {
  GetBookPublishersFailure({
    super.title = 'Buscar por editoras',
    required super.message,
    required super.description,
  });
}

class ErrorGetBookPublishers extends GetBookPublishersFailure {
  ErrorGetBookPublishers({required super.message, super.description});
}

import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class GetBookAuthorsFailure extends ErrorGeneralContract {
  GetBookAuthorsFailure({
    super.title = 'Buscar por autores',
    required super.message,
    required super.description,
  });
}

class ErrorGetBookAuthors extends GetBookAuthorsFailure {
  ErrorGetBookAuthors({required super.message, super.description});
}

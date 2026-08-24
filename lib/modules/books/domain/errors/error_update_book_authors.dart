import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class UpdateBookAuthorsFailure extends ErrorGeneralContract {
  UpdateBookAuthorsFailure({
    super.title = 'Atualizar autor',
    required super.message,
    required super.description,
  });
}

class ErrorUpdateBookAuthors extends UpdateBookAuthorsFailure {
  ErrorUpdateBookAuthors({required super.message, super.description});
}

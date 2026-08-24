import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class DeleteBookAuthorsFailure extends ErrorGeneralContract {
  DeleteBookAuthorsFailure({
    super.title = 'Deletar autor',
    required super.message,
    required super.description,
  });
}

class ErrorDeleteBookAuthors extends DeleteBookAuthorsFailure {
  ErrorDeleteBookAuthors({required super.message, super.description});
}

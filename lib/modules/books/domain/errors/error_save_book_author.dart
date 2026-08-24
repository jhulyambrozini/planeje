import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class SaveBookAuthorFailure extends ErrorGeneralContract {
  SaveBookAuthorFailure({
    super.title = 'Salvar autor(a)',
    required super.message,
    required super.description,
  });
}

class ErrorSaveBookAuthor extends SaveBookAuthorFailure {
  ErrorSaveBookAuthor({required super.message, super.description});
}

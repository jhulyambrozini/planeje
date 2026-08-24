import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class DeleteBookGenderFailure extends ErrorGeneralContract {
  DeleteBookGenderFailure({
    super.title = 'Deletar genêro',
    required super.message,
    required super.description,
  });
}

class ErrorDeleteBookGender extends DeleteBookGenderFailure {
  ErrorDeleteBookGender({required super.message, super.description});
}

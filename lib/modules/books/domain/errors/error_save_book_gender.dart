import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class SaveBookGenderFailure extends ErrorGeneralContract {
  SaveBookGenderFailure({
    super.title = 'Salvar genêro literário',
    required super.message,
    required super.description,
  });
}

class ErrorSaveBookGender extends SaveBookGenderFailure {
  ErrorSaveBookGender({required super.message, super.description});
}

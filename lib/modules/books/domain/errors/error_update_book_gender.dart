import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class UpdateBookGenderFailure extends ErrorGeneralContract {
  UpdateBookGenderFailure({
    super.title = 'Atualizar genêro literário',
    required super.message,
    required super.description,
  });
}

class ErrorUpdateBookGender extends UpdateBookGenderFailure {
  ErrorUpdateBookGender({required super.message, super.description});
}

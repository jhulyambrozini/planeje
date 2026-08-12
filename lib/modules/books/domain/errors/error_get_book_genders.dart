import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class ErrorGetBookGenders extends ErrorGeneralContract {
  ErrorGetBookGenders({
    super.title = 'Buscar por gêneros literários',
    required super.message,
    required super.description,
  });
}

class ErrorErrorGetBookGenders extends ErrorGetBookGenders {
  ErrorErrorGetBookGenders({required super.message, super.description});
}

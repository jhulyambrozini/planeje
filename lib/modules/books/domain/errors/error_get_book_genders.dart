import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class GetBookGendersFailure extends ErrorGeneralContract {
  GetBookGendersFailure({
    super.title = 'Buscar por gêneros literários',
    required super.message,
    required super.description,
  });
}

class ErrorGetBookGenders extends GetBookGendersFailure {
  ErrorGetBookGenders({required super.message, super.description});
}

import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class GetBookNacionalitiesFailure extends ErrorGeneralContract {
  GetBookNacionalitiesFailure({
    super.title = 'Buscar por naionalidades',
    required super.message,
    required super.description,
  });
}

class ErrorGetBookNacionalities extends GetBookNacionalitiesFailure {
  ErrorGetBookNacionalities({required super.message, super.description});
}

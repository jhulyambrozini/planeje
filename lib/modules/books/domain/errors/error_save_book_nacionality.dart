import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class SaveBookNacionalityFailure extends ErrorGeneralContract {
  SaveBookNacionalityFailure({
    super.title = 'Salvar nacionalidade',
    required super.message,
    required super.description,
  });
}

class ErrorSaveBookNacionality extends SaveBookNacionalityFailure {
  ErrorSaveBookNacionality({required super.message, super.description});
}

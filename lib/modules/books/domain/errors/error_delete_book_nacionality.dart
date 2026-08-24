import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class DeleteBookNacionalityFailure extends ErrorGeneralContract {
  DeleteBookNacionalityFailure({
    super.title = 'Deletar nacionalidade',
    required super.message,
    required super.description,
  });
}

class ErrorDeleteBookNacionality extends DeleteBookNacionalityFailure {
  ErrorDeleteBookNacionality({required super.message, super.description});
}

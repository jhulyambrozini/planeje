import 'package:planeje/modules/finnances/domain/errors/error_general_contract.dart';

abstract class SaveFinnanceFailure extends ErrorGeneralContract {
  SaveFinnanceFailure({
    super.title = 'Salvar cabeçalho financeiro',
    required super.message,
    required super.description,
  });
}

class ErrorSaveFinnance extends SaveFinnanceFailure {
  ErrorSaveFinnance({required super.message, super.description});
}

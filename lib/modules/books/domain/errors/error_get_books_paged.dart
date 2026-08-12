import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class GetBooksPagedFailure extends ErrorGeneralContract {
  GetBooksPagedFailure({
    super.title = 'Buscar Histórico de Livros',
    required super.message,
    required super.description,
  });
}

class ErrorGetBooksPaged extends GetBooksPagedFailure {
  ErrorGetBooksPaged({required super.message, super.description});
}

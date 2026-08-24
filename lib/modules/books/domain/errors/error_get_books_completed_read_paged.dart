import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';

abstract class GetBooksCompletedReadPagedFailure extends ErrorGeneralContract {
  GetBooksCompletedReadPagedFailure({
    super.title = 'Buscar histórico de livros lidos',
    required super.message,
    required super.description,
  });
}

class ErrorGetBooksPaged extends GetBooksCompletedReadPagedFailure {
  ErrorGetBooksPaged({required super.message, super.description});
}

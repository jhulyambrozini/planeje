import 'package:planeje/modules/books/domain/errors/error_delete_book_nacionality.dart';
import 'package:planeje/modules/books/domain/repositories/book_nacionality_repository.dart';
import 'package:result_dart/result_dart.dart';

abstract class DeleteBookNacionalityUsecase {
  Future<ResultDart<String, DeleteBookNacionalityFailure>> call(String id);
}

class DeleteBookNacionalityUsecaseImpl implements DeleteBookNacionalityUsecase {
  final BookNacionalityRepository _repository;

  DeleteBookNacionalityUsecaseImpl(this._repository);

  @override
  Future<ResultDart<String, DeleteBookNacionalityFailure>> call(String id) {
    return _repository.remove(id);
  }
}

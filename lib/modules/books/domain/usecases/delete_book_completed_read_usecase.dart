import 'package:planeje/modules/books/domain/errors/error_delete_book_completed_read.dart';
import 'package:planeje/modules/books/domain/repositories/completed_read_repository.dart';
import 'package:result_dart/result_dart.dart';

abstract class DeleteBookCompletedReadUsecase {
  Future<ResultDart<String, DeleteBookCompletedReadFailure>> call(String id);
}

class DeleteBookCompletedReadUsecaseImpl
    implements DeleteBookCompletedReadUsecase {
  final CompletedReadRepository _repository;

  DeleteBookCompletedReadUsecaseImpl(this._repository);

  @override
  Future<ResultDart<String, DeleteBookCompletedReadFailure>> call(String id) {
    return _repository.remove(id);
  }
}

import 'package:planeje/modules/books/domain/aggregates/completed_read_aggregate.dart';
import 'package:planeje/modules/books/domain/errors/error_save_book_completed_read.dart';
import 'package:planeje/modules/books/domain/repositories/completed_read_repository.dart';
import 'package:result_dart/result_dart.dart';

abstract class SaveBookCompletedReadUsecase {
  Future<ResultDart<String, SaveBookCompletedReadFailure>> call(
      CompletedReadAggregate data);
}

class SaveBookCompletedReadUsecaseImpl implements SaveBookCompletedReadUsecase {
  final CompletedReadRepository _repository;

  SaveBookCompletedReadUsecaseImpl(this._repository);

  @override
  Future<ResultDart<String, SaveBookCompletedReadFailure>> call(
      CompletedReadAggregate data) {
    return _repository.save(data);
  }
}

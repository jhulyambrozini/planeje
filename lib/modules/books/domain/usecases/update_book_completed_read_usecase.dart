import 'package:planeje/modules/books/domain/aggregates/completed_read_aggregate.dart';
import 'package:planeje/modules/books/domain/errors/error_update_book_completed_read.dart';
import 'package:planeje/modules/books/domain/repositories/completed_read_repository.dart';
import 'package:result_dart/result_dart.dart';

abstract class UpdateBookCompletedReadUsecase {
  Future<ResultDart<String, UpdateBookCompletedReadFailure>> call(
      CompletedReadAggregate data);
}

class UpdateBookCompletedReadUsecaseImpl
    implements UpdateBookCompletedReadUsecase {
  final CompletedReadRepository _repository;

  UpdateBookCompletedReadUsecaseImpl(this._repository);

  @override
  Future<ResultDart<String, UpdateBookCompletedReadFailure>> call(
      CompletedReadAggregate data) {
    return _repository.updateData(data);
  }
}

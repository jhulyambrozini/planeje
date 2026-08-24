import 'package:planeje/modules/books/domain/errors/error_delete_book_publisher.dart';
import 'package:planeje/modules/books/domain/repositories/book_publisher_repository.dart';
import 'package:result_dart/result_dart.dart';

abstract class DeleteBookPublisherUsecase {
  Future<ResultDart<String, DeleteBookPublisherFailure>> call(String id);
}

class DeleteBookPublisherUsecaseImpl implements DeleteBookPublisherUsecase {
  final BookPublisherRepository _repository;

  DeleteBookPublisherUsecaseImpl(this._repository);

  @override
  Future<ResultDart<String, DeleteBookPublisherFailure>> call(String id) {
    return _repository.remove(id);
  }
}

import 'package:planeje/modules/books/domain/entities/books_publishers_entity.dart';
import 'package:planeje/modules/books/domain/errors/error_update_book_publisher.dart';
import 'package:planeje/modules/books/domain/repositories/book_publisher_repository.dart';
import 'package:result_dart/result_dart.dart';

abstract class UpdateBookPublisherUsecase {
  Future<ResultDart<String, UpdateBookPublisherFailure>> call(
      BooksPublishersEntity data);
}

class UpdateBookPublisherUsecaseImpl implements UpdateBookPublisherUsecase {
  final BookPublisherRepository _repository;

  UpdateBookPublisherUsecaseImpl(this._repository);

  @override
  Future<ResultDart<String, UpdateBookPublisherFailure>> call(
      BooksPublishersEntity data) {
    return _repository.updateData(data);
  }
}

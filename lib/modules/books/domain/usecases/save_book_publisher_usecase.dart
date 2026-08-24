import 'package:planeje/modules/books/domain/entities/books_publishers_entity.dart';
import 'package:planeje/modules/books/domain/errors/error_save_book_publisher.dart';
import 'package:planeje/modules/books/domain/repositories/book_publisher_repository.dart';
import 'package:result_dart/result_dart.dart';

abstract class SaveBookPublisherUsecase {
  Future<ResultDart<String, SaveBookPublisherFailure>> call(
      BooksPublishersEntity data);
}

class SaveBookPublisherUsecaseImpl implements SaveBookPublisherUsecase {
  final BookPublisherRepository _repository;

  SaveBookPublisherUsecaseImpl(this._repository);

  @override
  Future<ResultDart<String, SaveBookPublisherFailure>> call(
      BooksPublishersEntity data) {
    return _repository.save(data);
  }
}

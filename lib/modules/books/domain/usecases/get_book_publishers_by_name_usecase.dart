import 'package:planeje/modules/books/domain/entities/books_publishers_entity.dart';
import 'package:planeje/modules/books/domain/errors/error_get_book_publishers.dart';
import 'package:planeje/modules/books/domain/repositories/book_publisher_repository.dart';
import 'package:result_dart/result_dart.dart';

abstract class GetBookPublishersByNameUsecase {
  Future<ResultDart<List<BooksPublishersEntity>, GetBookPublishersFailure>>
      call(String name);
}

class GetBookPublishersByNameUsecaseImpl
    implements GetBookPublishersByNameUsecase {
  final BookPublisherRepository _repository;

  GetBookPublishersByNameUsecaseImpl(this._repository);

  @override
  Future<ResultDart<List<BooksPublishersEntity>, GetBookPublishersFailure>>
      call(String name) {
    return _repository.getAll(name);
  }
}

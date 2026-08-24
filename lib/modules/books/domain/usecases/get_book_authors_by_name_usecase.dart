import 'package:planeje/modules/books/domain/entities/books_author_entity.dart';
import 'package:planeje/modules/books/domain/errors/error_get_book_authors.dart';
import 'package:planeje/modules/books/domain/repositories/book_author_repository.dart';
import 'package:result_dart/result_dart.dart';

abstract class GetBookAuthorsByNameUsecase {
  Future<ResultDart<List<BooksAuthorEntity>, GetBookAuthorsFailure>> call(
    String name,
  );
}

class GetBookAuthorsByNameUsecaseImpl implements GetBookAuthorsByNameUsecase {
  final BookAuthorRepository _repository;

  GetBookAuthorsByNameUsecaseImpl(this._repository);

  @override
  Future<ResultDart<List<BooksAuthorEntity>, GetBookAuthorsFailure>> call(
    String name,
  ) {
    return _repository.getAll(name);
  }
}

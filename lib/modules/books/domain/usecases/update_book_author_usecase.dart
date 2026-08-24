import 'package:planeje/modules/books/domain/entities/books_author_entity.dart';
import 'package:planeje/modules/books/domain/errors/error_update_book_authors.dart';
import 'package:planeje/modules/books/domain/repositories/book_author_repository.dart';
import 'package:result_dart/result_dart.dart';

abstract class UpdateBookAuthorUsecase {
  Future<ResultDart<String, UpdateBookAuthorsFailure>> call(
      BooksAuthorEntity data);
}

class UpdateBookAuthorUsecaseImpl implements UpdateBookAuthorUsecase {
  final BookAuthorRepository _repository;

  UpdateBookAuthorUsecaseImpl(this._repository);

  @override
  Future<ResultDart<String, UpdateBookAuthorsFailure>> call(
      BooksAuthorEntity data) {
    return _repository.updateData(data);
  }
}

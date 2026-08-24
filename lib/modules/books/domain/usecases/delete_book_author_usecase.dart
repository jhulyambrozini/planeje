import 'package:planeje/modules/books/domain/errors/error_delete_book_authors.dart';
import 'package:planeje/modules/books/domain/repositories/book_author_repository.dart';
import 'package:result_dart/result_dart.dart';

abstract class DeleteBookAuthorUsecase {
  Future<ResultDart<String, DeleteBookAuthorsFailure>> call(String id);
}

class DeleteBookAuthorUsecaseImpl implements DeleteBookAuthorUsecase {
  final BookAuthorRepository _repository;

  DeleteBookAuthorUsecaseImpl(this._repository);

  @override
  Future<ResultDart<String, DeleteBookAuthorsFailure>> call(String id) {
    return _repository.remove(id);
  }
}

import 'package:planeje/modules/books/domain/entities/books_author_entity.dart';
import 'package:planeje/modules/books/domain/errors/error_save_book_author.dart';
import 'package:planeje/modules/books/domain/repositories/book_author_repository.dart';
import 'package:result_dart/result_dart.dart';

abstract class SaveBookAuthorUsecase {
  Future<ResultDart<String, SaveBookAuthorFailure>> call(
      BooksAuthorEntity data);
}

class SaveBookAuthorUsecaseImpl implements SaveBookAuthorUsecase {
  final BookAuthorRepository _repository;

  SaveBookAuthorUsecaseImpl(this._repository);

  @override
  Future<ResultDart<String, SaveBookAuthorFailure>> call(
      BooksAuthorEntity data) {
    return _repository.save(data);
  }
}

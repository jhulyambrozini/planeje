import 'package:planeje/modules/books/domain/errors/error_update_book_nacionality.dart';
import 'package:planeje/modules/books/domain/repositories/book_nacionality_repository.dart';
import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';
import 'package:result_dart/result_dart.dart';

abstract class UpdateBookNacionalityUsecase {
  Future<ResultDart<String, UpdateBookNacionalityFailure>> call(
      BooksNacionalityVo data);
}

class UpdateBookNacionalityUsecaseImpl implements UpdateBookNacionalityUsecase {
  final BookNacionalityRepository _repository;

  UpdateBookNacionalityUsecaseImpl(this._repository);

  @override
  Future<ResultDart<String, UpdateBookNacionalityFailure>> call(
      BooksNacionalityVo data) {
    return _repository.updateData(data);
  }
}

import 'package:planeje/modules/books/domain/errors/error_save_book_nacionality.dart';
import 'package:planeje/modules/books/domain/repositories/book_nacionality_repository.dart';
import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';
import 'package:result_dart/result_dart.dart';

abstract class SaveBookNacionalityUsecase {
  Future<ResultDart<String, SaveBookNacionalityFailure>> call(
      BooksNacionalityVo data);
}

class SaveBookNacionalityUsecaseImpl implements SaveBookNacionalityUsecase {
  final BookNacionalityRepository _repository;

  SaveBookNacionalityUsecaseImpl(this._repository);

  @override
  Future<ResultDart<String, SaveBookNacionalityFailure>> call(
      BooksNacionalityVo data) {
    return _repository.save(data);
  }
}

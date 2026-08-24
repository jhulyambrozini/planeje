import 'package:planeje/modules/books/domain/errors/error_get_book_nacionalities.dart';
import 'package:planeje/modules/books/domain/repositories/book_nacionality_repository.dart';
import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';
import 'package:result_dart/result_dart.dart';

abstract class GetBookNacionalityByNameUsecase {
  Future<ResultDart<List<BooksNacionalityVo>, GetBookNacionalitiesFailure>>
      call(String name);
}

class GetBookNacionalityByNameUsecaseImpl
    implements GetBookNacionalityByNameUsecase {
  final BookNacionalityRepository _repository;

  GetBookNacionalityByNameUsecaseImpl(this._repository);

  @override
  Future<ResultDart<List<BooksNacionalityVo>, GetBookNacionalitiesFailure>>
      call(String name) {
    return _repository.getAll(name);
  }
}

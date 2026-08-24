import 'package:planeje/modules/books/domain/errors/error_get_book_genders.dart';
import 'package:planeje/modules/books/domain/repositories/book_gender_repository.dart';
import 'package:planeje/modules/books/domain/value_objects/books_gender_vo.dart';
import 'package:result_dart/result_dart.dart';

abstract class GetBookGendersByNameUsecase {
  Future<ResultDart<List<BooksGenderVo>, GetBookGendersFailure>> call(
    String name,
  );
}

class GetBookGendersByNameUsecaseImpl implements GetBookGendersByNameUsecase {
  final BookGenderRepository _repository;

  GetBookGendersByNameUsecaseImpl(this._repository);

  @override
  Future<ResultDart<List<BooksGenderVo>, GetBookGendersFailure>> call(
    String name,
  ) {
    return _repository.getAll(name);
  }
}

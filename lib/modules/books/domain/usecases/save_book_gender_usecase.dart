import 'package:planeje/modules/books/domain/errors/error_save_book_gender.dart';
import 'package:planeje/modules/books/domain/repositories/book_gender_repository.dart';
import 'package:planeje/modules/books/domain/value_objects/books_gender_vo.dart';
import 'package:result_dart/result_dart.dart';

abstract class SaveBookGenderUsecase {
  Future<ResultDart<String, SaveBookGenderFailure>> call(BooksGenderVo data);
}

class SaveBookGenderUsecaseImpl implements SaveBookGenderUsecase {
  final BookGenderRepository _repository;

  SaveBookGenderUsecaseImpl(this._repository);

  @override
  Future<ResultDart<String, SaveBookGenderFailure>> call(BooksGenderVo data) {
    return _repository.save(data);
  }
}

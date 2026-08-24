import 'package:planeje/modules/books/domain/errors/error_update_book_gender.dart';
import 'package:planeje/modules/books/domain/repositories/book_gender_repository.dart';
import 'package:planeje/modules/books/domain/value_objects/books_gender_vo.dart';
import 'package:result_dart/result_dart.dart';

abstract class UpdateBookGenderUsecase {
  Future<ResultDart<String, UpdateBookGenderFailure>> call(BooksGenderVo data);
}

class UpdateBookGenderUsecaseImpl implements UpdateBookGenderUsecase {
  final BookGenderRepository _repository;

  UpdateBookGenderUsecaseImpl(this._repository);

  @override
  Future<ResultDart<String, UpdateBookGenderFailure>> call(BooksGenderVo data) {
    return _repository.updateData(data);
  }
}

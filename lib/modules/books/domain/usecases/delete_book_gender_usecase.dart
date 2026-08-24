import 'package:planeje/modules/books/domain/errors/error_delete_book_gender.dart';
import 'package:planeje/modules/books/domain/repositories/book_gender_repository.dart';
import 'package:result_dart/result_dart.dart';

abstract class DeleteBookGenderUsecase {
  Future<ResultDart<String, DeleteBookGenderFailure>> call(String id);
}

class DeleteBookGenderUsecaseImpl implements DeleteBookGenderUsecase {
  final BookGenderRepository _repository;

  DeleteBookGenderUsecaseImpl(this._repository);

  @override
  Future<ResultDart<String, DeleteBookGenderFailure>> call(String id) {
    return _repository.remove(id);
  }
}

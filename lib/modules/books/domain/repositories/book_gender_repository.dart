import 'package:planeje/modules/books/domain/errors/error_delete_book_gender.dart';
import 'package:planeje/modules/books/domain/errors/error_get_book_genders.dart';
import 'package:planeje/modules/books/domain/errors/error_save_book_gender.dart';
import 'package:planeje/modules/books/domain/errors/error_update_book_gender.dart';
import 'package:planeje/modules/books/domain/value_objects/books_gender_vo.dart';
import 'package:result_dart/src/result_dart_base.dart';

abstract class BookGenderRepository {
  Future<ResultDart<String, SaveBookGenderFailure>> save(BooksGenderVo data);
  Future<ResultDart<List<BooksGenderVo>, GetBookGendersFailure>> getAll(
    String name,
  );
  Future<ResultDart<String, UpdateBookGenderFailure>> updateData(
    BooksGenderVo data,
  );
  Future<ResultDart<String, DeleteBookGenderFailure>> remove(String id);
}

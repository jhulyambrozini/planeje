import 'package:planeje/modules/books/domain/errors/error_delete_book_nacionality.dart';
import 'package:planeje/modules/books/domain/errors/error_get_book_nacionalities.dart';
import 'package:planeje/modules/books/domain/errors/error_save_book_nacionality.dart';
import 'package:planeje/modules/books/domain/errors/error_update_book_nacionality.dart';
import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';
import 'package:result_dart/src/result_dart_base.dart';

abstract class BookNacionalityRepository {
  Future<ResultDart<String, SaveBookNacionalityFailure>> save(
    BooksNacionalityVo data,
  );
  Future<ResultDart<List<BooksNacionalityVo>, GetBookNacionalitiesFailure>>
  getAll(String name);
  Future<ResultDart<String, UpdateBookNacionalityFailure>> updateData(
    BooksNacionalityVo data,
  );
  Future<ResultDart<String, DeleteBookNacionalityFailure>> remove(String id);
}

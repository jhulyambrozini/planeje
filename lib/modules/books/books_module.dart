import 'package:flutter_modular/flutter_modular.dart';
import 'package:planeje/modules/books/domain/repositories/book_author_repository.dart';
import 'package:planeje/modules/books/domain/repositories/book_gender_repository.dart';
import 'package:planeje/modules/books/domain/repositories/book_nacionality_repository.dart';
import 'package:planeje/modules/books/domain/repositories/book_publisher_repository.dart';
import 'package:planeje/modules/books/domain/repositories/completed_read_repository.dart';
import 'package:planeje/modules/books/domain/usecases/delete_book_author_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/delete_book_completed_read_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/delete_book_gender_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/delete_book_nacionality_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/delete_book_publisher_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/get_book_authors_by_name_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/get_book_genders_by_name_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/get_book_nacionality_by_name_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/get_book_publishers_by_name_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/get_books_completed_read_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/save_book_author_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/save_book_completed_read_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/save_book_gender_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/save_book_nacionality_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/save_book_publisher_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/update_book_author_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/update_book_completed_read_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/update_book_gender_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/update_book_nacionality_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/update_book_publisher_usecase.dart';
import 'package:planeje/modules/books/external/datasources/author/book_author_datasource_impl.dart';
import 'package:planeje/modules/books/external/datasources/completed_read/completed_read_datasource_impl.dart';
import 'package:planeje/modules/books/external/datasources/gender/book_gender_datasource_impl.dart';
import 'package:planeje/modules/books/external/datasources/nationality/book_nacionality_datasource_impl.dart';
import 'package:planeje/modules/books/external/datasources/publisher/book_publisher_datasource_impl.dart';
import 'package:planeje/modules/books/infra/datasources/book_author_datasource.dart';
import 'package:planeje/modules/books/infra/datasources/book_gender_datasource.dart';
import 'package:planeje/modules/books/infra/datasources/book_nacionality_datasource.dart';
import 'package:planeje/modules/books/infra/datasources/book_publisher_datasource.dart';
import 'package:planeje/modules/books/infra/datasources/completed_read_datasource.dart';
import 'package:planeje/modules/books/infra/repositories/book_author_repository_impl.dart';
import 'package:planeje/modules/books/infra/repositories/book_gender_repository_impl.dart';
import 'package:planeje/modules/books/infra/repositories/book_nacionality_repository_impl.dart';
import 'package:planeje/modules/books/infra/repositories/book_publisher_repository_impl.dart';
import 'package:planeje/modules/books/infra/repositories/completed_read_repository_impl.dart';
import 'package:planeje/modules/books/presenter/views/books_view.dart';
import 'package:planeje/modules/core/core_module.dart';

class BooksModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];
  @override
  void binds(i) {
    i.add<CompletedReadDatasource>(CompletedReadDatasourceImpl.new);
    i.add<BookAuthorDatasource>(BookAuthorDatasourceImpl.new);
    i.add<BookGenderDatasource>(BookGenderDatasourceImpl.new);
    i.add<BookNacionalityDatasource>(BookNacionalityDatasourceImpl.new);
    i.add<BookPublisherDatasource>(BookPublisherDatasourceImpl.new);

    i.add<CompletedReadRepository>(CompletedReadRepositoryImpl.new);
    i.add<BookNacionalityRepository>(BookNacionalityRepositoryImpl.new);
    i.add<BookAuthorRepository>(BookAuthorRepositoryImpl.new);
    i.add<BookPublisherRepository>(BookPublisherRepositoryImpl.new);
    i.add<BookGenderRepository>(BookGenderRepositoryImpl.new);

    i.add<GetBookAuthorsByNameUsecase>(GetBookAuthorsByNameUsecaseImpl.new);
    i.add<GetBookGendersByNameUsecase>(GetBookGendersByNameUsecaseImpl.new);
    i.add<GetBookNacionalityByNameUsecase>(
        GetBookNacionalityByNameUsecaseImpl.new);
    i.add<GetBookPublishersByNameUsecase>(
        GetBookPublishersByNameUsecaseImpl.new);
    i.add<GetBooksCompletedReadUsecase>(GetBooksCompletedReadUsecaseImpl.new);
    i.add<SaveBookAuthorUsecase>(SaveBookAuthorUsecaseImpl.new);
    i.add<SaveBookGenderUsecase>(SaveBookGenderUsecaseImpl.new);
    i.add<SaveBookNacionalityUsecase>(SaveBookNacionalityUsecaseImpl.new);
    i.add<SaveBookPublisherUsecase>(SaveBookPublisherUsecaseImpl.new);
    i.add<SaveBookCompletedReadUsecase>(SaveBookCompletedReadUsecaseImpl.new);
    i.add<UpdateBookAuthorUsecase>(UpdateBookAuthorUsecaseImpl.new);
    i.add<UpdateBookGenderUsecase>(UpdateBookGenderUsecaseImpl.new);
    i.add<UpdateBookNacionalityUsecase>(UpdateBookNacionalityUsecaseImpl.new);
    i.add<UpdateBookPublisherUsecase>(UpdateBookPublisherUsecaseImpl.new);
    i.add<UpdateBookCompletedReadUsecase>(
        UpdateBookCompletedReadUsecaseImpl.new);
    i.add<DeleteBookAuthorUsecase>(DeleteBookAuthorUsecaseImpl.new);
    i.add<DeleteBookGenderUsecase>(DeleteBookGenderUsecaseImpl.new);
    i.add<DeleteBookNacionalityUsecase>(DeleteBookNacionalityUsecaseImpl.new);
    i.add<DeleteBookPublisherUsecase>(DeleteBookPublisherUsecaseImpl.new);
    i.add<DeleteBookCompletedReadUsecase>(
        DeleteBookCompletedReadUsecaseImpl.new);
  }

  @override
  void routes(r) {
    r.child("/", child: (context) => const BooksView());
  }
}

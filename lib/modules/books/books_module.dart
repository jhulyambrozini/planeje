import 'package:flutter_modular/flutter_modular.dart';
import 'package:planeje/modules/books/domain/repositories/books_repository.dart';
import 'package:planeje/modules/books/external/datasources/completed_readings/completed_reading_datasource_impl.dart';
import 'package:planeje/modules/books/infra/datasources/book_nacionality_datasource.dart';
import 'package:planeje/modules/books/infra/repositories/books_repository_impl.dart';
import 'package:planeje/modules/books/presenter/views/books_view.dart';
import 'package:planeje/modules/core/core_module.dart';

class BooksModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];
  @override
  void binds(i) {
    i.add<BooksDatasource>(BooksDatasourceImpl.new);
    i.add<BooksRepository>(BooksRepositoryImpl.new);
  }

  @override
  void routes(r) {
    r.child("/", child: (context) => const BooksView());
  }
}

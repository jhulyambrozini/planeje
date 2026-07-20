import 'package:flutter_modular/flutter_modular.dart';
import 'package:planeje/modules/books/presenter/views/books_view.dart';
import 'package:planeje/modules/core/core_module.dart';

class BooksModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child("/", child: (context) => const BooksView());
  }
}

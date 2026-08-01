import 'package:drift/drift.dart';
import 'package:planeje/modules/books/infra/datasources/books_datasource.dart';
import 'package:planeje/modules/core/external/local_database/database.dart';
import 'package:planeje/modules/core/external/local_database/tables/completed_readings_table.dart';

part 'books_datasource_impl.g.dart';

@DriftAccessor(tables: [CompletedReadingsTable])
class BooksDatasourceImpl extends DatabaseAccessor<AppDatabase>
    with _$BooksDatasourceImplMixin
    implements BooksDatasource {
  BooksDatasourceImpl(super.attachedDatabase);
}

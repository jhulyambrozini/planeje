import 'package:drift/drift.dart';
import 'package:planeje/modules/core/external/local_database/database.dart';
import 'package:planeje/modules/core/external/local_database/tables/finnances_expense_table.dart';
import 'package:planeje/modules/core/external/local_database/tables/finnances_header_table.dart';
import 'package:planeje/modules/finnances/domain/dtos/paging_finnances_dto.dart';
import 'package:planeje/modules/finnances/domain/entities/finnances_header_entity.dart';
import 'package:planeje/modules/finnances/external/scripts/finnances_sql.dart';
import 'package:planeje/modules/finnances/infra/datasources/finnances_datasource.dart';

part 'finnances_datasource_impl.g.dart';

@DriftAccessor(tables: [FinnacesHeaderTable, FinnancesExpenseTable])
class FinnancesDatasourceImpl extends DatabaseAccessor<AppDatabase>
    with _$FinnancesDatasourceImplMixin
    implements FinnancesDatasource {
  final FinnancesSql _sql;

  FinnancesDatasourceImpl(super.db, this._sql);

  @override
  Future<List<Map<String, dynamic>>> getHistoryPaged(
    PagingFinnancesDto dto,
  ) async {
    final response = await customSelect(_sql.getHistoryPaged(dto)).get();
    return response.map((ele) => ele.data).toList();
  }

  @override
  Future<void> insertHistory(FinnancesHeaderEntity data) async {
    await into(finnacesHeaderTable).insert(
      FinnacesHeaderTableCompanion.insert(
        id: data.id,
        year: data.year,
        month: data.month,
        totalReceived: data.totalReceived,
        totalSpent: data.totalSpent,
      ),
    );
  }

  @override
  Future<int> countHistory() async {
    final response = await select(finnacesHeaderTable).get();
    return response.length;
  }
}

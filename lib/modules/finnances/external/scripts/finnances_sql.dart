import 'package:planeje/modules/finnances/domain/dtos/paging_finnances_dto.dart';

class FinnancesSql {
  String getHistoryPaged(PagingFinnancesDto dto) {
    final offset = dto.paging.perPage * (dto.paging.page - 1);
    final conditions = <String>[];
    final params = <String, dynamic>{};
    int paramIndex = 1;

    // Filtro de mês
    if (dto.monthSearch != null && dto.monthSearch!.isNotEmpty) {
      conditions.add('month LIKE @month$paramIndex');
      params['month$paramIndex'] = '%${dto.monthSearch}%';
      paramIndex++;
    }

    // Filtro de ano
    if (dto.yearFilter != null) {
      conditions.add('year LIKE @year$paramIndex');
      params['year$paramIndex'] = '%${dto.yearFilter}%';
      paramIndex++;
    }

    // Monta a query final
    final whereClause = conditions.isNotEmpty
        ? 'WHERE ${conditions.join(' AND ')}'
        : '';

    return '''
    SELECT *
    FROM finnaces_header_table
    $whereClause  
    ORDER BY year ASC
    LIMIT ${dto.paging.perPage}
    OFFSET $offset
''';
  }
}

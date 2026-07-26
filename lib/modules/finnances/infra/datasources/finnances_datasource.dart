import 'package:planeje/modules/finnances/domain/dtos/paging_finnances_dto.dart';
import 'package:planeje/modules/finnances/domain/entities/finnances_header_entity.dart';

abstract class FinnancesDatasource {
  Future<List<Map<String, dynamic>>> getHistoryPaged(PagingFinnancesDto dto);

  Future<int> countHistory();
  Future<void> insertHistory(FinnancesHeaderEntity data);
}

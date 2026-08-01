import 'package:planeje/modules/finnances/domain/dtos/paging_finnances_dto.dart';
import 'package:planeje/modules/finnances/domain/entities/finnances_header_entity.dart';

abstract class FinnancesDatasource {
  Future<List<Map<String, dynamic>>> getHistoryPaged(PagingFinnancesDto dto);
  Future<List<Map<String, dynamic>>> getTransactionsBy(String finnacesId);

  Future<int> countHistory();

  Future<bool> verifyIfExistFinnaceHeader(String month, int year);
  Future<void> insertHistory(FinnancesHeaderEntity data);
}

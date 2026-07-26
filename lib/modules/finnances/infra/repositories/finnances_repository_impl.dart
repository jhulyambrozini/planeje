import 'package:planeje/modules/core/domain/value_objects/pagination_response_vo.dart';
import 'package:planeje/modules/finnances/domain/dtos/paging_finnances_dto.dart';
import 'package:planeje/modules/finnances/domain/entities/finnances_header_entity.dart';
import 'package:planeje/modules/finnances/domain/errors/error_get_finnances_paged.dart';
import 'package:planeje/modules/finnances/domain/errors/error_save_finnance.dart';
import 'package:planeje/modules/finnances/domain/repositories/finnances_repository.dart';
import 'package:planeje/modules/finnances/infra/adapters/finnances_mappers.dart';
import 'package:planeje/modules/finnances/infra/datasources/finnances_datasource.dart';
import 'package:result_dart/result_dart.dart';

class FinnancesRepositoryImpl implements FinnancesRepository {
  final FinnancesDatasource _datasource;

  FinnancesRepositoryImpl(this._datasource);

  @override
  Future<
    ResultDart<
      PaginationResponseVo<FinnancesHeaderEntity>,
      GetFinnancesPagedFailure
    >
  >
  getHistoryPaged(PagingFinnancesDto dto) async {
    try {
      final response = await _datasource.getHistoryPaged(dto);
      final count = await _datasource.countHistory();

      final data = response.map(FinnancesMappers.historyFromMap).toList();
      return Success(
        PaginationResponseVo(
          data: data,
          currentPage: dto.paging.page,
          perPage: dto.paging.perPage,
          totalOfPages: count,
        ),
      );
    } catch (error) {
      return Failure(
        ErrorGetFinnancesPaged(
          message: 'Ocorreu um erro ao buscar histórico',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<String, SaveFinnanceFailure>> saveFinnacer(
    FinnancesHeaderEntity data,
  ) async {
    try {
      await _datasource.insertHistory(data);

      return Success('');
    } catch (error) {
      return Failure(
        ErrorSaveFinnance(
          message: 'Ocorreu um erro ao salvar informações do financeiro',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }
}

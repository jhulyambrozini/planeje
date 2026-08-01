import 'package:planeje/modules/core/domain/value_objects/pagination_response_vo.dart';
import 'package:planeje/modules/finnances/domain/dtos/paging_finnances_dto.dart';
import 'package:planeje/modules/finnances/domain/entities/finnances_header_entity.dart';
import 'package:planeje/modules/finnances/domain/errors/error_get_finnances_paged.dart';
import 'package:planeje/modules/finnances/domain/repositories/finnances_repository.dart';
import 'package:result_dart/result_dart.dart';

abstract class GetFinnancesPagedUsecase {
  Future<
    ResultDart<
      PaginationResponseVo<FinnancesHeaderEntity>,
      GetFinnancesPagedFailure
    >
  >
  call(PagingFinnancesDto dto);
}

class GetFinnancesPagedUsecaseImpl implements GetFinnancesPagedUsecase {
  final FinnancesRepository _repository;

  GetFinnancesPagedUsecaseImpl(this._repository);
  @override
  Future<
    ResultDart<
      PaginationResponseVo<FinnancesHeaderEntity>,
      GetFinnancesPagedFailure
    >
  >
  call(PagingFinnancesDto dto) async {
    return _repository.getHistoryPaged(dto);
  }
}

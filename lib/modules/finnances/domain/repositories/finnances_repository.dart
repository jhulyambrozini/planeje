import 'package:planeje/modules/core/domain/value_objects/pagination_response_vo.dart';
import 'package:planeje/modules/finnances/domain/dtos/paging_finnances_dto.dart';
import 'package:planeje/modules/finnances/domain/entities/finnance_transaction_entity.dart';
import 'package:planeje/modules/finnances/domain/entities/finnances_header_entity.dart';
import 'package:planeje/modules/finnances/domain/errors/error_get_finnance_transactions.dart';
import 'package:planeje/modules/finnances/domain/errors/error_get_finnances_paged.dart';
import 'package:planeje/modules/finnances/domain/errors/error_save_finnance.dart';
import 'package:planeje/modules/finnances/domain/errors/error_verify_finnance_exists.dart';
import 'package:result_dart/result_dart.dart';

abstract class FinnancesRepository {
  Future<ResultDart<bool, VerifyFinnanceExistsFailure>>
  verifyIfExistFinnaceHeader(String month, int year);
  Future<
    ResultDart<
      PaginationResponseVo<FinnancesHeaderEntity>,
      GetFinnancesPagedFailure
    >
  >
  getHistoryPaged(PagingFinnancesDto dto);

  Future<ResultDart<String, SaveFinnanceFailure>> saveFinnacer(
    FinnancesHeaderEntity data,
  );

  Future<
    ResultDart<List<FinnancesTransactionEntity>, GetFinnanceTransactionFailure>
  >
  getTransactionsBy(String finnacesId);
}

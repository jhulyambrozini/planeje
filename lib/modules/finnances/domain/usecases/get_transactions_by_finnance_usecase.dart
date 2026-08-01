import 'package:planeje/modules/finnances/domain/entities/finnance_transaction_entity.dart';
import 'package:planeje/modules/finnances/domain/errors/error_get_finnance_transactions.dart';
import 'package:planeje/modules/finnances/domain/repositories/finnances_repository.dart';
import 'package:result_dart/result_dart.dart';

abstract class GetTransactionsByFinnanceUsecase {
  Future<
    ResultDart<List<FinnancesTransactionEntity>, GetFinnanceTransactionFailure>
  >
  call(String finnacesId);
}

class GetTransactionsByFinnanceUsecaseImpl
    implements GetTransactionsByFinnanceUsecase {
  final FinnancesRepository _repository;

  GetTransactionsByFinnanceUsecaseImpl(this._repository);
  @override
  Future<
    ResultDart<List<FinnancesTransactionEntity>, GetFinnanceTransactionFailure>
  >
  call(String finnacesId) async {
    return _repository.getTransactionsBy(finnacesId);
  }
}

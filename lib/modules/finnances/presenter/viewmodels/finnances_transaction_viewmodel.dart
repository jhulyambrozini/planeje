import 'package:flutter/widgets.dart';
import 'package:planeje/modules/core/domain/models/result_action_model.dart';
import 'package:planeje/modules/finnances/domain/entities/finnance_transaction_entity.dart';
import 'package:planeje/modules/finnances/domain/entities/finnances_header_entity.dart';
import 'package:planeje/modules/finnances/domain/usecases/get_transactions_by_finnance_usecase.dart';

class FinnancesExpensesViewmodel with ChangeNotifier {
  final GetTransactionsByFinnanceUsecase _getExpensesByFinnanceUsecase;

  FinnancesExpensesViewmodel(this._getExpensesByFinnanceUsecase);

  List<FinnancesTransactionEntity> transactions = [];

  FinnancesHeaderEntity header = FinnancesHeaderEntity.empty();

  final descriptionController = TextEditingController();
  final tagController = TextEditingController();
  final valueController = TextEditingController();

  Future<ResultActionModel> init(FinnancesHeaderEntity entity) async {
    final result = await _fetchData(entity.id);
    if (result.isError) return ResultActionModel.failure(result.message);
    header = entity;
    transactions = result.data;
    notifyListeners();
    return ResultActionModel.success();
  }

  Future<ResultActionModel> _fetchData(String id) async {
    final result = await _getExpensesByFinnanceUsecase(id);
    if (result.isError()) {
      return ResultActionModel.failure(result.exceptionOrNull()!.message);
    }
    return ResultActionModel.success(data: result.getOrDefault([]));
  }

  Future<ResultActionModel> onAddTransaction() async {
    return ResultActionModel.success();
  }

  Future<ResultActionModel> onDeleteTransaction(String id) async {
    return ResultActionModel.success();
  }

  Future<ResultActionModel> onEditTransaction(String id) async {
    return ResultActionModel.success();
  }
}

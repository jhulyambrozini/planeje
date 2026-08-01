import 'package:planeje/modules/finnances/domain/entities/finnances_header_entity.dart';
import 'package:planeje/modules/finnances/domain/errors/error_save_finnance.dart';
import 'package:planeje/modules/finnances/domain/repositories/finnances_repository.dart';
import 'package:result_dart/result_dart.dart';
import 'package:uuid/uuid.dart';

abstract class SaveFinnanceHeaderUsecase {
  Future<ResultDart<String, SaveFinnanceFailure>> call({
    int? year,
    String? month,
  });
}

class SaveFinnanceHeaderUsecaseImpl implements SaveFinnanceHeaderUsecase {
  final FinnancesRepository _repository;

  SaveFinnanceHeaderUsecaseImpl(this._repository);
  @override
  Future<ResultDart<String, SaveFinnanceFailure>> call({
    int? year,
    String? month,
  }) async {
    if (year == null || month == null) {
      return Failure(
        ErrorSaveFinnance(
          message: 'Todos os campos são obrigatórios',
          description: '[ERROR/VALIDATE] => error de validação de input',
        ),
      );
    }
    final result = await _repository.verifyIfExistFinnaceHeader(month, year);
    if (result.isError()) {
      return Failure(
        ErrorSaveFinnance(
          message: result.exceptionOrNull()!.message,
          description: result.exceptionOrNull()!.description,
        ),
      );
    }
    final dataExists = result.getOrElse((_) => true);
    if (dataExists) {
      return Failure(
        ErrorSaveFinnance(
          message: 'Esse registro já existe!',
          description: '[ERROR/VALIDATE] => eEsse registro já existe!',
        ),
      );
    }
    return _repository.saveFinnacer(
      FinnancesHeaderEntity(
        id: Uuid().v4(),
        year: year,
        month: month,
        totalReceived: 0,
        totalSpent: 0,
      ),
    );
  }
}

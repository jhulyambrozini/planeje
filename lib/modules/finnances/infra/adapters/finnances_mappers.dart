import 'package:planeje/modules/finnances/domain/entities/finnance_transaction_entity.dart';
import 'package:planeje/modules/finnances/domain/entities/finnances_header_entity.dart';

class FinnancesMappers {
  static FinnancesHeaderEntity historyFromMap(Map<String, dynamic> map) {
    return FinnancesHeaderEntity(
      id: map['id'],
      year: (map['year'] as num).toInt(),
      month: map['month'],
      totalReceived: map['total_received'],
      totalSpent: map['total_spent'],
    );
  }

  static FinnancesTransactionEntity expensesFromMap(Map<String, dynamic> map) {
    return FinnancesTransactionEntity(
      id: map['id'] as String,
      description: map['description'] as String,
      finnacesId: map['finnacesId'] as String,
      tag: map['tag'] as String,
      value: map['value'] as String,
      isCashInflow: map['isCashInflow'] as bool,
    );
  }
}

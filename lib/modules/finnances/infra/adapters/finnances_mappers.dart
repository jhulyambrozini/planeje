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
}

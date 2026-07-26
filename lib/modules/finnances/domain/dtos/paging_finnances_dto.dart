import 'package:planeje/modules/core/domain/value_objects/paging_vo.dart';

class PagingFinnancesDto {
  final PagingVo paging;
  final int? yearFilter;
  final String? monthSearch;

  PagingFinnancesDto({
    required this.paging,
    required this.yearFilter,
    required this.monthSearch,
  });
}

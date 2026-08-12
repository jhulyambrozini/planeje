import 'package:planeje/modules/core/domain/value_objects/paging_vo.dart';

class PagingBooksDto {
  final PagingVo paging;
  final List<int> genderIds;
  final int? yearFilter;
  final List<int> authorIds;
  final String searchBookName;

  PagingBooksDto({
    required this.paging,
    required this.genderIds,
    required this.yearFilter,
    required this.authorIds,
    required this.searchBookName,
  });
}

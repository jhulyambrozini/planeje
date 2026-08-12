import 'package:flutter/widgets.dart';

class BooksViewmodel extends ChangeNotifier {
  late final ListPaginateState<FinnancesHeaderEntity, GetFinnancesPagedFailure>
  pagingState;
  bool isLastPage = false;
  bool isFilterOpen = false;
}

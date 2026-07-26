import 'package:flutter/widgets.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:planeje/modules/core/domain/enums/month_enum.dart';
import 'package:planeje/modules/core/domain/enums/year_enum.dart';
import 'package:planeje/modules/core/domain/value_objects/paging_vo.dart';
import 'package:planeje/modules/core/presenter/dtos/drop_down_selection_dto.dart';
import 'package:planeje/modules/finnances/domain/dtos/paging_finnances_dto.dart';
import 'package:planeje/modules/finnances/domain/entities/finnances_header_entity.dart';
import 'package:planeje/modules/finnances/domain/get_finnances_paged_usecase.dart';

class FinnacesViewmodel extends ChangeNotifier {
  final GetFinnancesPagedUsecase _getFinnancesPagedUsecase;

  FinnacesViewmodel(this._getFinnancesPagedUsecase);

  PagingState<int, FinnancesHeaderEntity> pagingState = PagingState(
    hasNextPage: true,
    isLoading: false,
  );
  bool isLastPage = false;
  final monthSearch = TextEditingController();
  int? yearFilter;
  bool get listIsEmpty => pagingState.items?.isNotEmpty ?? false;
  List<DropDownSelectionDto<MonthEnum>> listMonth = months;
  List<DropDownSelectionDto<YearEnum>> listYears = years;

  DropDownSelectionDto? yearSelected;
  DropDownSelectionDto? monthSelected;

  Future<void> init() async {
    await fetchPage();
  }

  void onSelectYear(DropDownSelectionDto? value) {
    yearSelected = value;
    notifyListeners();
  }

  void onSelectMonth(DropDownSelectionDto? value) {
    monthSelected = value;
    notifyListeners();
  }

  Future<void> fetchPage() async {
    if (pagingState.isLoading || isLastPage) return;
    pagingState = pagingState.copyWith(isLoading: true, error: null);
    final newKey = (pagingState.keys?.last ?? 0) + 1;

    final result = await _getFinnancesPagedUsecase(
      PagingFinnancesDto(
        paging: PagingVo(page: newKey, perPage: 5),
        monthSearch: monthSearch.text,
        yearFilter: yearFilter,
      ),
    );

    result.fold(
      (success) {
        isLastPage = success.lastPage == success.currentPage;

        if (success.data.isEmpty) {
          pagingState = pagingState.copyWith(
            pages: [],
            keys: [],
            hasNextPage: !isLastPage,
            isLoading: false,
          );
          notifyListeners();
          return;
        }

        pagingState = pagingState.copyWith(
          pages: [...?pagingState.pages, success.data],
          keys: [...?pagingState.keys, newKey],
          hasNextPage: !isLastPage,
          isLoading: false,
        );
        notifyListeners();
      },
      (failure) {
        pagingState = pagingState.copyWith(
          isLoading: false,
          error: failure.message,
        );
        notifyListeners();
      },
    );
  }

  Future<void> onRefresh() async {
    pagingState = pagingState.reset();
    isLastPage = false;
    notifyListeners();
    await fetchPage();
  }
}

final years = [
  DropDownSelectionDto(
    value: YearEnum.y2027,
    description: YearEnum.y2027.value.toString(),
  ),
  DropDownSelectionDto(
    value: YearEnum.y2026,
    description: YearEnum.y2026.value.toString(),
  ),
  DropDownSelectionDto(
    value: YearEnum.y2025,
    description: YearEnum.y2025.value.toString(),
  ),
  DropDownSelectionDto(
    value: YearEnum.y2024,
    description: YearEnum.y2024.value.toString(),
  ),
];

final months = [
  DropDownSelectionDto(
    description: MonthEnum.january.description,
    value: MonthEnum.january,
  ),
  DropDownSelectionDto(
    description: MonthEnum.february.description,
    value: MonthEnum.february,
  ),
  DropDownSelectionDto(
    description: MonthEnum.march.description,
    value: MonthEnum.march,
  ),
  DropDownSelectionDto(
    description: MonthEnum.april.description,
    value: MonthEnum.april,
  ),
  DropDownSelectionDto(
    description: MonthEnum.may.description,
    value: MonthEnum.may,
  ),
  DropDownSelectionDto(
    description: MonthEnum.june.description,
    value: MonthEnum.june,
  ),
  DropDownSelectionDto(
    description: MonthEnum.july.description,
    value: MonthEnum.july,
  ),
  DropDownSelectionDto(
    description: MonthEnum.august.description,
    value: MonthEnum.august,
  ),
  DropDownSelectionDto(
    description: MonthEnum.september.description,
    value: MonthEnum.september,
  ),
  DropDownSelectionDto(
    description: MonthEnum.october.description,
    value: MonthEnum.october,
  ),
  DropDownSelectionDto(
    description: MonthEnum.november.description,
    value: MonthEnum.november,
  ),
  DropDownSelectionDto(
    description: MonthEnum.december.description,
    value: MonthEnum.december,
  ),
];

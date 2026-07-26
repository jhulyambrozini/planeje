import 'package:flutter/widgets.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:planeje/modules/core/domain/enums/month_enum.dart';
import 'package:planeje/modules/core/domain/enums/year_enum.dart';
import 'package:planeje/modules/core/domain/models/result_action_model.dart';
import 'package:planeje/modules/core/domain/value_objects/paging_vo.dart';
import 'package:planeje/modules/core/presenter/dtos/drop_down_selection_dto.dart';
import 'package:planeje/modules/finnances/domain/dtos/paging_finnances_dto.dart';
import 'package:planeje/modules/finnances/domain/entities/finnances_header_entity.dart';
import 'package:planeje/modules/finnances/domain/get_finnances_paged_usecase.dart';
import 'package:planeje/modules/finnances/domain/save_finnance_header_usecase.dart';

class FinnancesViewmodel extends ChangeNotifier {
  final GetFinnancesPagedUsecase _getFinnancesPagedUsecase;
  final SaveFinnanceHeaderUsecase _saveFinnanceHeaderUsecase;

  FinnancesViewmodel(
    this._getFinnancesPagedUsecase,
    this._saveFinnanceHeaderUsecase,
  );

  PagingState<int, FinnancesHeaderEntity> pagingState = PagingState(
    hasNextPage: true,
    isLoading: false,
  );
  bool isLastPage = false;
  final monthSearch = TextEditingController();
  int? yearFilter;
  bool get listIsNotEmpty => pagingState.items?.isNotEmpty ?? false;
  List<DropDownSelectionDto<MonthEnum>> listMonth = months;
  List<DropDownSelectionDto<YearEnum>> listYears = years;

  final yearSelected = ValueNotifier<DropDownSelectionDto<YearEnum>?>(null);
  final monthSelected = ValueNotifier<DropDownSelectionDto<MonthEnum>?>(null);

  Future<void> init() async {
    await fetchPage();
  }

  Future<ResultActionModel> onCreateFinnance() async {
    if (yearSelected.value == null) {
      return ResultActionModel.failure('Selecione um ano');
    }
    final intYear = int.tryParse(yearSelected.value!.description);

    final result = await _saveFinnanceHeaderUsecase(
      year: intYear,
      month: monthSelected.value?.description,
    );
    if (result.isError()) {
      return ResultActionModel.failure(result.exceptionOrNull()!.message);
    }
    yearSelected.value = null;
    monthSelected.value = null;
    await onRefresh();
    return ResultActionModel.success();
  }

  void onSelectYear(DropDownSelectionDto<YearEnum>? value) {
    yearSelected.value = value;
    notifyListeners();
  }

  void onSelectMonth(DropDownSelectionDto<MonthEnum>? value) {
    monthSelected.value = value;
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
        isLastPage = success.isLastPage;

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
        print(failure.description);
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

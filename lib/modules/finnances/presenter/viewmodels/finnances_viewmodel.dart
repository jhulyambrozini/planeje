import 'package:flutter/widgets.dart';
import 'package:planeje/modules/core/domain/enums/month_enum.dart';
import 'package:planeje/modules/core/domain/enums/year_enum.dart';
import 'package:planeje/modules/core/domain/models/result_action_model.dart';
import 'package:planeje/modules/core/domain/value_objects/pagination_response_vo.dart';
import 'package:planeje/modules/core/domain/value_objects/paging_vo.dart';
import 'package:planeje/modules/core/presenter/dtos/drop_down_selection_dto.dart';
import 'package:planeje/modules/core/presenter/states/list_paginate_state.dart';
import 'package:planeje/modules/finnances/domain/dtos/paging_finnances_dto.dart';
import 'package:planeje/modules/finnances/domain/entities/finnances_header_entity.dart';
import 'package:planeje/modules/finnances/domain/errors/error_get_finnances_paged.dart';
import 'package:planeje/modules/finnances/domain/usecases/get_finnances_paged_usecase.dart';
import 'package:planeje/modules/finnances/domain/usecases/save_finnance_header_usecase.dart';
import 'package:result_dart/result_dart.dart';

class FinnancesViewmodel extends ChangeNotifier {
  final GetFinnancesPagedUsecase _getFinnancesPagedUsecase;
  final SaveFinnanceHeaderUsecase _saveFinnanceHeaderUsecase;

  FinnancesViewmodel(
    this._getFinnancesPagedUsecase,
    this._saveFinnanceHeaderUsecase,
  );

  late final ListPaginateState<FinnancesHeaderEntity, GetFinnancesPagedFailure>
  pagingState;
  bool isLastPage = false;
  bool isFilterOpen = false;

  final monthSearch = TextEditingController();
  int? yearFilter;
  bool get listIsNotEmpty => pagingState.listIsNotEmpty;
  List<DropDownSelectionDto<MonthEnum>> listMonth = months;
  List<DropDownSelectionDto<YearEnum>> listYears = years;
  List<YearEnum> listYearsFilter = [
    YearEnum.y2027,
    YearEnum.y2026,
    YearEnum.y2025,
    YearEnum.y2024,
  ];

  final yearSelected = ValueNotifier<DropDownSelectionDto<YearEnum>?>(null);
  final monthSelected = ValueNotifier<DropDownSelectionDto<MonthEnum>?>(null);

  Future<void> init() async {
    pagingState = ListPaginateState(fetchFunction: fetchPage);
    pagingState.addListener(() => notifyListeners());
    await pagingState.init();
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
    await pagingState.onRefresh();
    return ResultActionModel.success();
  }

  void onSelectYear(DropDownSelectionDto<YearEnum>? value) {
    yearSelected.value = value;
    notifyListeners();
  }

  void toogleFilter() {
    isFilterOpen = !isFilterOpen;
    notifyListeners();
  }

  void onSelectMonth(DropDownSelectionDto<MonthEnum>? value) {
    monthSelected.value = value;
    notifyListeners();
  }

  Future<
    ResultDart<
      PaginationResponseVo<FinnancesHeaderEntity>,
      GetFinnancesPagedFailure
    >
  >
  fetchPage(int newKey) {
    return _getFinnancesPagedUsecase(
      PagingFinnancesDto(
        paging: PagingVo(page: newKey, perPage: 5),
        monthSearch: monthSearch.text,
        yearFilter: yearFilter,
      ),
    );
  }

  Future<void> onSearch() async {
    FocusManager.instance.primaryFocus?.unfocus();
    await pagingState.onRefresh();
  }

  Future<void> onSelectFilter(int filter) async {
    yearFilter = filter;
    notifyListeners();
    await pagingState.onRefresh();
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

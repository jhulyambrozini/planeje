import 'package:flutter/cupertino.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:planeje/modules/core/domain/value_objects/pagination_response_vo.dart';
import 'package:planeje/modules/core/domain/errors/error_general_contract.dart';
import 'package:result_dart/result_dart.dart';

class ListPaginateState<R, E extends ErrorGeneralContract> with ChangeNotifier {
  Future<ResultDart<PaginationResponseVo<R>, E>> Function(int pageKey)
  fetchFunction;

  ListPaginateState({required this.fetchFunction});

  PagingState<int, R> state = PagingState(hasNextPage: true, isLoading: false);
  bool get listIsNotEmpty => state.items?.isNotEmpty ?? false;

  Future<void> init() async {
    await _fetchFirstPage();
  }

  Future<void> _fetchFirstPage() async {
    if (state.isLoading) return;
    state = state.copyWith(isLoading: true, error: null);
    notifyListeners();
    const newKey = 1;

    final result = await fetchFunction(newKey);
    final resultData = result.getOrNull();

    if (result.isError() || resultData == null) {
      state = state.copyWith(
        isLoading: false,
        error:
            result.exceptionOrNull()?.message ??
            'Ocorreu um erro ao buscar a lista',
      );
      notifyListeners();
      debugPrint('paginate error ${result.exceptionOrNull()?.description}');
      return;
    }

    if (resultData.data.isEmpty) {
      state = state.copyWith(
        pages: [],
        keys: [],
        hasNextPage: !resultData.isLastPage,
        isLoading: false,
      );
      notifyListeners();
      return;
    }
    state = state.copyWith(
      pages: [resultData.data],
      keys: [newKey],
      hasNextPage: !resultData.isLastPage,
      isLoading: false,
    );
    notifyListeners();
  }

  Future<void> fetchNextPage() async {
    if (state.isLoading || !state.hasNextPage) return;
    state = state.copyWith(isLoading: true, error: null);
    notifyListeners();
    final newKey = (state.keys?.last ?? 0) + 1;

    final result = await fetchFunction(newKey);
    final resultData = result.getOrNull();

    if (result.isError() || resultData == null) {
      state = state.copyWith(
        isLoading: false,
        error:
            result.exceptionOrNull()?.message ??
            'Ocorreu um erro ao buscar a nova página',
      );
      notifyListeners();
      return;
    }

    if (resultData.data.isEmpty) {
      state = state.copyWith(
        pages: [...?state.pages],
        keys: [...?state.keys],
        hasNextPage: false,
        isLoading: false,
      );
      notifyListeners();
      return;
    }
    state = state.copyWith(
      pages: [...?state.pages, resultData.data],
      keys: [...?state.keys, newKey],
      hasNextPage: !resultData.isLastPage,
      isLoading: false,
    );
    notifyListeners();
  }

  Future<void> onRefresh() async {
    state = state.reset();
    notifyListeners();
    await _fetchFirstPage();
  }
}

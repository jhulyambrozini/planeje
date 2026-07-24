import 'package:flutter/widgets.dart';



class FinnacesViewmodel extends ChangeNotifier {
  final GetHistoriesPagedUsecase _getHistoryUsecase;

  FinnacesViewmodel(this._getHistoryUsecase);

  PagingState<int, HistoryAggregate> pagingState = PagingState(
    hasNextPage: true,
    isLoading: false,
  );
  bool isLastPage = false;

  Future<void> init() async {
    await _fetchFirstPage();
  }

  Future<void> _fetchFirstPage() async {
    if (pagingState.isLoading) return;
    pagingState = pagingState.copyWith(isLoading: true, error: null);
    const newKey = 1;

    final result = await _getHistoryUsecase(
      PagingDto(page: newKey, perPage: 5),
    );

    result.fold(
      (failure) {
        pagingState = pagingState.copyWith(
          isLoading: false,
          error: failure.message,
        );
        notifyListeners();
      },
      (success) {
        isLastPage = success.pagination.isLastPage;

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
          pages: [success.data],
          keys: [newKey],
          hasNextPage: !isLastPage,
          isLoading: false,
        );
        notifyListeners();
      },
    );
  }

  Future<void> fetchNextPage() async {
    if (pagingState.isLoading || isLastPage) return;
    pagingState = pagingState.copyWith(isLoading: true, error: null);
    final newKey = (pagingState.keys?.last ?? 0) + 1;

    final result = await _getHistoryUsecase(
      PagingDto(page: newKey, perPage: 5),
    );

    result.fold(
      (failure) {
        pagingState = pagingState.copyWith(
          isLoading: false,
          error: failure.message,
        );
        notifyListeners();
      },
      (success) {
        isLastPage = success.pagination.isLastPage;

        if (success.data.isEmpty) {
          pagingState = pagingState.copyWith(
            pages: [],
            keys: [],
            hasNextPage: true,
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
    );
  }

  Future<void> onRefresh() async {
    pagingState = pagingState.reset();
    isLastPage = false;
    notifyListeners();
    await _fetchFirstPage();
  }
}

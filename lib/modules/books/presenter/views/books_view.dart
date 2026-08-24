import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:planeje/modules/books/domain/aggregates/completed_read_aggregate.dart';
import 'package:planeje/modules/books/presenter/viewmodels/books_viewmodel.dart';
import 'package:planeje/modules/books/presenter/widgets/books_card_widget.dart';
import 'package:planeje/modules/books/presenter/widgets/books_empty_state_widget.dart';
import 'package:planeje/modules/books/presenter/widgets/books_filter_widget.dart';
import 'package:planeje/modules/books/presenter/widgets/books_search_widget.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/core/presenter/widgets/card_failure_fetch_widget.dart';

class BooksView extends StatefulWidget {
  const BooksView({super.key});

  @override
  State<BooksView> createState() => _BooksViewState();
}

class _BooksViewState extends State<BooksView> {
  final _viewmodel = Modular.get<BooksViewmodel>();

  @override
  void initState() {
    super.initState();
    _viewmodel.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTheme.background,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ColorsTheme.primary,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: ColorsTheme.primaryDark),
      ),
      body: SafeArea(
        child: ListenableBuilder(
          listenable: _viewmodel,
          builder: (context, _) => Column(
            children: [
              _buildHeader(),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: BooksSearchWidget(),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: BooksFilterWidget(bookCount: _viewmodel.bookCount),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async => _viewmodel.pagingState.onRefresh(),
                  child: PagedListView<int, CompletedReadAggregate>(
                    state: _viewmodel.pagingState.state,
                    fetchNextPage: _viewmodel.pagingState.fetchNextPage,
                    builderDelegate: PagedChildBuilderDelegate(
                      itemBuilder: (context, item, index) {
                        return BooksCardWidget(item: item);
                      },
                      firstPageProgressIndicatorBuilder: (_) =>
                          const Center(child: CircularProgressIndicator()),
                      firstPageErrorIndicatorBuilder: (_) =>
                          CardFailureFetchWidget(
                            message: _viewmodel.pagingState.state.error
                                .toString(),
                            onRefresh: _viewmodel.pagingState.onRefresh,
                          ),
                      newPageProgressIndicatorBuilder: (_) =>
                          const Center(child: CircularProgressIndicator()),
                      newPageErrorIndicatorBuilder: (_) => Align(
                        alignment: Alignment.topCenter,

                        child: Column(
                          spacing: 6,
                          children: [
                            Text(_viewmodel.pagingState.state.error.toString()),
                            TextButton(
                              onPressed: _viewmodel.pagingState.onRefresh,
                              child: Text(
                                'Recarregar lista',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: ColorsTheme.mutedForeground,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      noMoreItemsIndicatorBuilder: (_) => Center(
                        child: Text(
                          'Não há mais livros...',
                          style: TextStyle(
                            fontSize: 16,
                            color: ColorsTheme.mutedForeground,
                          ),
                        ),
                      ),

                      noItemsFoundIndicatorBuilder: (_) =>
                          BooksEmptyStateWidget(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          GestureDetector(
            onTap: Modular.to.pop,
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          const SizedBox(width: 12),
          const Text(
            'Estante Virtual',
            style: TextStyle(
              fontFamily: 'Livvic',
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

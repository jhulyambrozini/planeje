import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:planeje/modules/core/presenter/factories/snack_bar_factory.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/core/presenter/theme/font_sizes.dart';
import 'package:planeje/modules/core/presenter/widgets/card_failure_fetch_widget.dart';
import 'package:planeje/modules/finnances/domain/entities/finnances_header_entity.dart';
import 'package:planeje/modules/finnances/presenter/viewmodels/finnances_viewmodel.dart';
import 'package:planeje/modules/finnances/presenter/widgets/finnances_add_month_widget.dart';
import 'package:planeje/modules/finnances/presenter/widgets/finnances_empty_state_widget.dart';
import 'package:planeje/modules/finnances/presenter/widgets/finnances_historic_list_widget.dart';

class FinnancesView extends StatefulWidget {
  const FinnancesView({super.key});

  @override
  State<FinnancesView> createState() => _FinnancesViewState();
}

class _FinnancesViewState extends State<FinnancesView> {
  final _viewmodel = Modular.get<FinnancesViewmodel>();

  @override
  void initState() {
    super.initState();
    _viewmodel.init();
  }

  _onAddFinnaceMonth() async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return FinnancesAddMonthWidget(
          onAdd: () async {
            Navigator.of(context).pop();
            final result = await _viewmodel.onCreateFinnance();
            if (result.isError) return _showSnackbarError(result.message);
            _showSnackbarSucccess('histórico criado!');
          },
          onCancel: () => Navigator.of(context).pop(),
          months: _viewmodel.listMonth,
          years: _viewmodel.listYears,
          yearSelected: _viewmodel.yearSelected,
          monthSelected: _viewmodel.monthSelected,
          onSelectYear: _viewmodel.onSelectYear,
          onSelectMonth: _viewmodel.onSelectMonth,
        );
      },
    );
  }

  void _showSnackbarError(String message) async {
    final messenger = ScaffoldMessenger.of(context);
    SnackBarFactory.error(message: message, messenger: messenger);
  }

  void _showSnackbarSucccess(String message) async {
    final messenger = ScaffoldMessenger.of(context);
    SnackBarFactory.success(message: message, messenger: messenger);
  }

  _onEditFinnaceMonth(String id) async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Financeiro')),
      floatingActionButton: FloatingActionButton(
        onPressed: _onAddFinnaceMonth,
        child: Center(
          child: Icon(Icons.add, color: ColorsTheme.primaryDark, size: 32),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListenableBuilder(
          listenable: _viewmodel,
          builder: (context, _) => Column(
            children: [
              if (_viewmodel.listIsNotEmpty) ...[
                const Text(
                  'Esse é seu histórico de gastos',
                  style: TextStyle(
                    color: ColorsTheme.primaryLight,
                    fontFamily: 'Livvic',
                    fontSize: FontSizesTheme.xl,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'ANO - 2024',
                  style: TextStyle(
                    color: ColorsTheme.primaryLight,
                    fontFamily: 'Inter',
                    fontSize: FontSizesTheme.lg,
                  ),
                ),
              ],
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async => _viewmodel.onRefresh(),
                  child: PagedListView<int, FinnancesHeaderEntity>(
                    state: _viewmodel.pagingState,
                    fetchNextPage: _viewmodel.fetchPage,
                    builderDelegate: PagedChildBuilderDelegate(
                      itemBuilder: (context, item, index) {
                        return FinnancesHistoricItemWidget(
                          month: item.month,
                          onTap: () => _onEditFinnaceMonth(item.id),
                        );
                      },
                      firstPageProgressIndicatorBuilder: (_) =>
                          const Center(child: CircularProgressIndicator()),
                      firstPageErrorIndicatorBuilder: (_) =>
                          CardFailureFetchWidget(
                            message: _viewmodel.pagingState.error.toString(),
                            onRefresh: _viewmodel.onRefresh,
                          ),
                      newPageProgressIndicatorBuilder: (_) =>
                          const Center(child: CircularProgressIndicator()),
                      newPageErrorIndicatorBuilder: (_) => Align(
                        alignment: Alignment.topCenter,

                        child: Column(
                          spacing: 6,
                          children: [
                            Text(_viewmodel.pagingState.error.toString()),
                            TextButton(
                              onPressed: _viewmodel.onRefresh,
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

                      noItemsFoundIndicatorBuilder: (_) =>
                          FinnancesEmptyStateWidget(),
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
}

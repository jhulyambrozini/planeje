import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/finnances/presenter/viewmodels/finnances_viewmodel.dart';
import 'package:planeje/modules/finnances/presenter/widgets/finnances_add_month_widget.dart';
import 'package:planeje/modules/finnances/presenter/widgets/finnances_add_transaction_widget.dart';
import 'package:planeje/modules/finnances/presenter/widgets/finnances_delete_transaction_widget.dart';
import 'package:planeje/modules/finnances/presenter/widgets/finnances_edit_transaction_widget.dart';
import 'package:planeje/modules/finnances/presenter/widgets/finnances_empty_state_widget.dart';
import 'package:planeje/modules/finnances/presenter/widgets/finnances_historic_list_widget.dart';
import 'package:planeje/modules/finnances/presenter/widgets/finnances_transaction_list_widget.dart';

class FinnancesView extends StatefulWidget {
  const FinnancesView({super.key});

  @override
  State<FinnancesView> createState() => _FinnancesViewState();
}

class _FinnancesViewState extends State<FinnancesView> {
  final _vm = Modular.get<FinnacesViewmodel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTheme.background,
      body: ListenableBuilder(
        listenable: _vm,
        builder: (context, _) => _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        SafeArea(
          child: Column(
            children: [
              if (_vm.currentScreen != FinnancesScreen.home)
                _buildAppBar(),
              Expanded(
                child: _buildScreen(),
              ),
            ],
          ),
        ),
        if (_vm.isPopupOpen) _buildPopupOverlay(),
      ],
    );
  }

  Widget _buildAppBar() {
    return Container(
      color: ColorsTheme.background,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              if (_vm.currentScreen == FinnancesScreen.historicList) {
                _vm.navigateToHome();
              } else {
                _vm.navigateToHistoricList();
              }
            },
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          const SizedBox(width: 8),
          const Text(
            'Financeiro',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: Modular.to.pop,
            child: const Icon(Icons.close, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildScreen() {
    switch (_vm.currentScreen) {
      case FinnancesScreen.home:
        return FinnancesEmptyStateWidget(
          onAddMonth: _vm.showAddMonthPopup,
        );
      case FinnancesScreen.historicList:
        return FinnancesHistoricListWidget(
          onBack: _vm.navigateToHome,
          onEditMonth: _vm.showAddMonthPopup,
        );
      case FinnancesScreen.transactionList:
        return FinnancesTransactionListWidget(
          monthYear: _vm.selectedMonthYear,
          totalSpent: _vm.totalSpent,
          totalRemaining: _vm.totalRemaining,
          onBack: _vm.navigateToHistoricList,
          onAddTransaction: _vm.showAddTransactionPopup,
          onEditTransaction: _vm.showEditTransactionPopup,
          onDeleteTransaction: _vm.showDeleteTransactionPopup,
          onSaveEdits: () {},
        );
    }
  }

  Widget _buildPopupOverlay() {
    return Stack(
      children: [
        GestureDetector(
          onTap: _vm.dismissPopup,
          child: Container(color: Colors.black.withValues(alpha: 0.86)),
        ),
        SafeArea(child: _buildPopup()),
      ],
    );
  }

  Widget _buildPopup() {
    switch (_vm.currentPopup) {
      case FinnancesPopup.addMonth:
        return FinnancesAddMonthWidget(
          onCancel: _vm.dismissPopup,
          onAdd: () {
            _vm.dismissPopup();
            _vm.navigateToHistoricList();
          },
        );
      case FinnancesPopup.addTransaction:
        return FinnancesAddTransactionWidget(
          onCancel: _vm.dismissPopup,
          onAdd: _vm.dismissPopup,
        );
      case FinnancesPopup.editTransaction:
        return FinnancesEditTransactionWidget(
          onCancel: _vm.dismissPopup,
          onSave: _vm.dismissPopup,
        );
      case FinnancesPopup.deleteTransaction:
        return FinnancesDeleteTransactionWidget(
          onCancel: _vm.dismissPopup,
          onDelete: _vm.dismissPopup,
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
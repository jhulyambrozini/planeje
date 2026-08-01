import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:planeje/modules/core/presenter/factories/snack_bar_factory.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/finnances/domain/entities/finnances_header_entity.dart';
import 'package:planeje/modules/finnances/presenter/viewmodels/finnances_transaction_viewmodel.dart';
import 'package:planeje/modules/finnances/presenter/widgets/finnances_add_transaction_widget.dart';
import 'package:planeje/modules/finnances/presenter/widgets/finnances_delete_transaction_widget.dart';
import 'package:planeje/modules/finnances/presenter/widgets/transaction_bottom_infos_widget.dart';
import 'package:planeje/modules/finnances/presenter/widgets/transaction_item_widget.dart';

class FinnancesTransactionView extends StatefulWidget {
  final FinnancesHeaderEntity data;
  const FinnancesTransactionView({super.key, required this.data});

  @override
  State<FinnancesTransactionView> createState() =>
      _FinnancesTransactionViewState();
}

class _FinnancesTransactionViewState extends State<FinnancesTransactionView> {
  final _viewmodel = Modular.get<FinnancesExpensesViewmodel>();

  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() async {
    final result = await _viewmodel.init(widget.data);
    if (result.isError) {
      _showSnackbarError(result.message);
      Modular.to.pop();
    }
  }

  Future<void> _onAddTransaction() async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return FinnancesAddTransactionWidget(
          onAdd: () async {
            Navigator.of(context).pop();
            final result = await _viewmodel.onAddTransaction();
            if (result.isError) return _showSnackbarError(result.message);
          },
          onCancel: () => Navigator.of(context).pop(),
          descriptionController: _viewmodel.descriptionController,
          tagController: _viewmodel.tagController,
          valueController: _viewmodel.valueController,
        );
      },
    );
  }

  Future<void> _onDeleteTransaction(String id) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return FinnancesDeleteTransactionWidget(
          onDelete: () async {
            Navigator.of(context).pop();
            final result = await _viewmodel.onDeleteTransaction(id);
            if (result.isError) return _showSnackbarError(result.message);
          },
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  Future<void> _onEditTransaction(String id) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return FinnancesAddTransactionWidget(
          onAdd: () async {
            Navigator.of(context).pop();
            final result = await _viewmodel.onEditTransaction(id);
            if (result.isError) return _showSnackbarError(result.message);
          },
          onCancel: () => Navigator.of(context).pop(),
          descriptionController: _viewmodel.descriptionController,
          tagController: _viewmodel.tagController,
          valueController: _viewmodel.valueController,
        );
      },
    );
  }

  Future<void> _onSaveEdits() async {}

  void _showSnackbarError(String message) async {
    final messenger = ScaffoldMessenger.of(context);
    SnackBarFactory.error(message: message, messenger: messenger);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Modular.to.pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: ColorsTheme.mutedForeground,
          ),
        ),
        actions: [Image.asset('assets/images/logo.png', width: 70)],
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Center(
            child: Text(
              'Transações mês de: ${_viewmodel.header.month}',
              style: TextStyle(
                color: ColorsTheme.primaryLight,
                fontFamily: 'Livvic',
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Center(
            child: Text(
              'ANO ${_viewmodel.header.year}',
              style: TextStyle(
                color: ColorsTheme.mutedForeground2,
                fontFamily: 'Livvic',
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: _viewmodel.transactions.length,
              itemBuilder: (context, index) {
                final item = _viewmodel.transactions[index];
                return TransactionItemWidget(
                  transaction: item,
                  onEditTransaction: () => _onEditTransaction(item.id),
                  onDeleteTransaction: () => _onDeleteTransaction(item.id),
                );
              },
            ),
          ),
          TransactionBottomInfosWidget(
            header: _viewmodel.header,
            onAddTransaction: _onAddTransaction,
            onSaveEdits: _onSaveEdits,
          ),
        ],
      ),
    );
  }
}

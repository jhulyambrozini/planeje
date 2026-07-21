import 'package:flutter/widgets.dart';

enum FinnancesScreen { home, historicList, transactionList }

enum FinnancesPopup { addMonth, addTransaction, editTransaction, deleteTransaction }

class FinnacesViewmodel extends ChangeNotifier {
  FinnancesScreen _currentScreen = FinnancesScreen.home;
  FinnancesPopup? _currentPopup;

  String _selectedMonthYear = '';
  String _totalSpent = '';
  String _totalRemaining = '';

  FinnancesScreen get currentScreen => _currentScreen;
  FinnancesPopup? get currentPopup => _currentPopup;
  String get selectedMonthYear => _selectedMonthYear;
  String get totalSpent => _totalSpent;
  String get totalRemaining => _totalRemaining;

  bool get isPopupOpen => _currentPopup != null;

  void navigateToHome() {
    _currentScreen = FinnancesScreen.home;
    _currentPopup = null;
    notifyListeners();
  }

  void navigateToHistoricList() {
    _currentScreen = FinnancesScreen.historicList;
    _currentPopup = null;
    notifyListeners();
  }

  void navigateToTransactionList(String monthYear) {
    _selectedMonthYear = monthYear;
    _currentScreen = FinnancesScreen.transactionList;
    _currentPopup = null;
    notifyListeners();
  }

  void showAddMonthPopup() {
    _currentPopup = FinnancesPopup.addMonth;
    notifyListeners();
  }

  void showAddTransactionPopup() {
    _currentPopup = FinnancesPopup.addTransaction;
    notifyListeners();
  }

  void showEditTransactionPopup() {
    _currentPopup = FinnancesPopup.editTransaction;
    notifyListeners();
  }

  void showDeleteTransactionPopup() {
    _currentPopup = FinnancesPopup.deleteTransaction;
    notifyListeners();
  }

  void dismissPopup() {
    _currentPopup = null;
    notifyListeners();
  }

  void updateTotals({String spent = '', String remaining = ''}) {
    _totalSpent = spent;
    _totalRemaining = remaining;
    notifyListeners();
  }
}
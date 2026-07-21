import 'package:flutter/widgets.dart';

enum PillTab { pill, cycle }

class MenstrualCycleViewmodel extends ChangeNotifier {
  PillTab _selectedTab = PillTab.pill;
  final int _currentDay = 14;

  PillTab get selectedTab => _selectedTab;
  int get currentDay => _currentDay;
  bool get isPillTab => _selectedTab == PillTab.pill;
  bool get isCycleTab => _selectedTab == PillTab.cycle;

  void selectTab(PillTab tab) {
    _selectedTab = tab;
    notifyListeners();
  }
}
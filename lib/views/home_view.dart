import 'package:flutter/material.dart';
import 'package:planeje/core/theme/colors.dart';
import 'package:planeje/views/finances_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FinancesView(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorsTheme.secondaryDark,
        currentIndex: 1,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        selectedItemColor: ColorsTheme.secondaryDark,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_outlined,
              color: ColorsTheme.primaryLight,
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                color: ColorsTheme.primaryLight,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.settings_outlined,
                color: ColorsTheme.secondaryDark,
                size: 32,
              ),
            ),

            icon: Icon(Icons.savings_outlined, color: ColorsTheme.primaryLight),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.checklist_rounded,
              color: ColorsTheme.primaryLight,
            ),
          ),
        ],
      ),
    );
  }
}

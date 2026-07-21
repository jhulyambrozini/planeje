import 'package:flutter/material.dart';
import 'package:planeje/modules/menstrual_cycle/presenter/viewmodels/menstrual_cycle_viewmodel.dart';

class MenstrualCycleTabBarWidget extends StatelessWidget {
  final PillTab selectedTab;
  final ValueChanged<PillTab> onTabSelected;

  const MenstrualCycleTabBarWidget({
    super.key,
    required this.selectedTab,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color(0xff1C1B1F),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(child: _buildTab(PillTab.pill, 'Pílula')),
          const SizedBox(width: 4),
          Expanded(child: _buildTab(PillTab.cycle, 'Ciclo')),
        ],
      ),
    );
  }

  Widget _buildTab(PillTab tab, String label) {
    final isActive = selectedTab == tab;
    return GestureDetector(
      onTap: () => onTabSelected(tab),
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? const Color(0xff489F9F) : const Color(0xff1C1B1F),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontFamily: 'Livvic',
              fontSize: 13,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
              color: isActive ? const Color(0xff001B1B) : const Color(0xff939393),
            ),
          ),
        ),
      ),
    );
  }
}
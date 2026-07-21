import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';
import 'package:planeje/modules/menstrual_cycle/presenter/viewmodels/menstrual_cycle_viewmodel.dart';
import 'package:planeje/modules/menstrual_cycle/presenter/widgets/menstrual_cycle_cycle_widget.dart';
import 'package:planeje/modules/menstrual_cycle/presenter/widgets/menstrual_cycle_header_widget.dart';
import 'package:planeje/modules/menstrual_cycle/presenter/widgets/menstrual_cycle_pill_widget.dart';
import 'package:planeje/modules/menstrual_cycle/presenter/widgets/menstrual_cycle_tab_bar_widget.dart';

class MenstrualCycleView extends StatefulWidget {
  const MenstrualCycleView({super.key});

  @override
  State<MenstrualCycleView> createState() => _MenstrualCycleViewState();
}

class _MenstrualCycleViewState extends State<MenstrualCycleView> {
  final _vm = MenstrualCycleViewmodel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTheme.background,
      body: SafeArea(
        child: ListenableBuilder(
          listenable: _vm,
          builder: (context, _) => Column(
            children: [
              MenstrualCycleHeaderWidget(
                onBack: Modular.to.pop,
                onCalendar: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: MenstrualCycleTabBarWidget(
                  selectedTab: _vm.selectedTab,
                  onTabSelected: _vm.selectTab,
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: _vm.isPillTab
                    ? const MenstrualCyclePillWidget()
                    : const MenstrualCycleCycleWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
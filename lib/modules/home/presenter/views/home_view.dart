import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:planeje/modules/home/presenter/widgets/card_to_navigate_widget.dart';
import 'package:planeje/modules/home/value_objects/card_navigate_infos_vo.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  void _navigateTo(String route) {
    Modular.to.pushNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Image.asset('assets/images/lauch_screen.png'),
            ),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 16,
                ),
                itemCount: 3,

                itemBuilder: (context, index) {
                  final infos = _getInfosByIndex(index);
                  return CardToNavigateWidget(infos: infos);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  CardNavigateInfosVo _getInfosByIndex(int index) {
    final list = [
      CardNavigateInfosVo(
        icon: Icons.invert_colors_on_rounded,
        label: 'Ciclo Menstrual',
        onPressed: () => _navigateTo('/menstrual_cycle'),
      ),
      CardNavigateInfosVo(
        icon: Icons.savings_rounded,
        label: 'Financeiro',
        onPressed: () => _navigateTo('/finnaces'),
      ),
      CardNavigateInfosVo(
        icon: Icons.auto_stories_rounded,
        label: 'Livros',
        onPressed: () => _navigateTo('/books'),
      ),
    ];

    return list[index];
  }
}

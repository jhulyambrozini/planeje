import 'package:flutter/material.dart';
import 'package:planeje/modules/menstrual_cycle/presenter/widgets/menstrual_cycle_day_card_widget.dart';
import 'package:planeje/modules/menstrual_cycle/presenter/widgets/menstrual_cycle_metric_card_widget.dart';

class MenstrualCycleCycleWidget extends StatelessWidget {
  const MenstrualCycleCycleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 8),
      children: [
        _buildCycleStatus(),
        const SizedBox(height: 8),
        _buildCycleDayInfo(),
        const SizedBox(height: 8),
        _buildPhaseBar(),
        const SizedBox(height: 8),
        _buildMetricsRow(),
        const SizedBox(height: 8),
        _buildNextCyclePrediction(),
        const SizedBox(height: 8),
        _buildDayListSection(),
        const SizedBox(height: 8),
        _buildCycleHistory(),
      ],
    );
  }

  Widget _buildCycleStatus() {
    return Container(
      height: 64,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xff1C1B1F),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Color(0xff489F9F),
              shape: BoxShape.circle,
            ),
            child: const Center(child: Text('14', style: TextStyle(fontFamily: 'Livvic', fontSize: 16, color: Color(0xff001B1B)))),
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dia 14 do ciclo', style: TextStyle(fontFamily: 'Livvic', fontSize: 14, color: Colors.white)),
                Text('Fase lútea · 7 dias restantes', style: TextStyle(fontFamily: 'Inter', fontSize: 12, color: Color(0xff939393))),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCycleDayInfo() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xff1C1B1F),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Sobre o dia 14',
            style: TextStyle(fontFamily: 'Livvic', fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const SizedBox(height: 8),
          _buildInfoRow(Icons.water_drop, 'Período: Não menstruando'),
          const SizedBox(height: 4),
          _buildInfoRow(Icons.thermostat, 'Temperatura: 36.5°C'),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 14, color: const Color(0xff939393)),
        const SizedBox(width: 8),
        Text(text, style: const TextStyle(fontFamily: 'Inter', fontSize: 12, color: Color(0xff939393))),
      ],
    );
  }

  Widget _buildPhaseBar() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(flex: 5, child: Container(height: 6, decoration: const BoxDecoration(
              color: Color(0xff489F9F),
              borderRadius: BorderRadius.horizontal(left: Radius.circular(3)),
            ))),
            Expanded(flex: 3, child: Container(height: 6, color: const Color(0xff64B4B4))),
            Expanded(flex: 2, child: Container(height: 6, decoration: const BoxDecoration(
              color: Color(0xff939393),
              borderRadius: BorderRadius.horizontal(right: Radius.circular(3)),
            ))),
          ],
        ),
        const SizedBox(height: 4),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Menstrual', style: TextStyle(fontFamily: 'Inter', fontSize: 10, color: Color(0xff939393))),
            Text('Folicular', style: TextStyle(fontFamily: 'Inter', fontSize: 10, color: Color(0xff939393))),
            Text('Lútea', style: TextStyle(fontFamily: 'Inter', fontSize: 10, color: Color(0xff939393))),
          ],
        ),
      ],
    );
  }

  Widget _buildMetricsRow() {
    return Row(
      children: [
        MenstrualCycleMetricCardWidget(title: 'Duração', value: '28'),
        const SizedBox(width: 8),
        MenstrualCycleMetricCardWidget(title: 'Período', value: '5d'),
        const SizedBox(width: 8),
        MenstrualCycleMetricCardWidget(title: 'Fluxo', value: 'Mod.'),
      ],
    );
  }

  Widget _buildNextCyclePrediction() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xff1C1B1F),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Previsão do próximo ciclo',
            style: TextStyle(fontFamily: 'Livvic', fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const SizedBox(height: 8),
          _buildPredictionRow(Icons.calendar_today, 'Início: 22 Jul 2026'),
          const SizedBox(height: 4),
          _buildPredictionRow(Icons.schedule, 'Duração: 5 dias'),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(flex: 3, child: Container(height: 6, color: const Color(0xff64B4B4))),
              Expanded(flex: 2, child: Container(height: 6, color: const Color(0xff939393))),
              Expanded(flex: 5, child: Container(height: 6, decoration: const BoxDecoration(
                color: Color(0xff489F9F),
                borderRadius: BorderRadius.horizontal(right: Radius.circular(3)),
              ))),
            ],
          ),
          const SizedBox(height: 4),
          const Text(
            'Lútea → Menstrual → Folicular (próx. ciclo)',
            style: TextStyle(fontFamily: 'Inter', fontSize: 9, color: Color(0xff939393)),
          ),
        ],
      ),
    );
  }

  Widget _buildPredictionRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 14, color: const Color(0xff939393)),
        const SizedBox(width: 8),
        Text(text, style: const TextStyle(fontFamily: 'Inter', fontSize: 12, color: Color(0xff939393))),
      ],
    );
  }

  Widget _buildDayListSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Registro de dias',
              style: TextStyle(fontFamily: 'Livvic', fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
            ),
            GestureDetector(
              onTap: () {},
              child: const Icon(Icons.add, color: Color(0xff489F9F), size: 20),
            ),
          ],
        ),
        const SizedBox(height: 4),
        MenstrualCycleDayCardWidget(date: '14', dayName: 'Seg', symptomDots: [
          const Color(0xff489F9F), const Color(0xff939393), const Color(0xff939393),
        ]),
        const SizedBox(height: 4),
        MenstrualCycleDayCardWidget(date: '13', dayName: 'Dom', symptomDots: [
          const Color(0xff939393), const Color(0xff939393), const Color(0xff939393),
        ]),
        const SizedBox(height: 4),
        MenstrualCycleDayCardWidget(date: '12', dayName: 'Sáb', symptomDots: [
          const Color(0xff489F9F), const Color(0xff939393), const Color(0xff939393),
        ]),
      ],
    );
  }

  Widget _buildCycleHistory() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Histórico de ciclos',
              style: TextStyle(fontFamily: 'Livvic', fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
            ),
            GestureDetector(
              onTap: () {},
              child: const Icon(Icons.chevron_right, color: Color(0xff939393), size: 18),
            ),
          ],
        ),
        const SizedBox(height: 4),
        _buildHistoryEntry('Junho 2026', '28 dias'),
        const SizedBox(height: 4),
        _buildHistoryEntry('Maio 2026', '30 dias'),
        const SizedBox(height: 4),
        _buildHistoryEntry('Abril 2026', '27 dias'),
      ],
    );
  }

  Widget _buildHistoryEntry(String month, String duration) {
    return Container(
      height: 42,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xff1C1B1F),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const Icon(Icons.circle, size: 8, color: Color(0xff489F9F)),
          const SizedBox(width: 8),
          Text(month, style: const TextStyle(fontFamily: 'Inter', fontSize: 12, color: Color(0xff939393))),
          const Spacer(),
          Text(duration, style: const TextStyle(fontFamily: 'Inter', fontSize: 12, color: Colors.white)),
          const SizedBox(width: 8),
          const Icon(Icons.chevron_right, color: Color(0xff939393), size: 16),
        ],
      ),
    );
  }
}
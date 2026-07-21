import 'package:flutter/material.dart';

class MenstrualCyclePillWidget extends StatelessWidget {
  const MenstrualCyclePillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 12),
      children: [
        _buildTodayPillCard(),
        const SizedBox(height: 12),
        _buildPackCalendar(),
        const SizedBox(height: 12),
        _buildMonthlyHistory(),
        const SizedBox(height: 12),
        _buildReminderSettings(),
      ],
    );
  }

  Widget _buildTodayPillCard() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xff1C1B1F),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xff489F9F), width: 2),
            ),
            child: const Icon(Icons.check, color: Color(0xff489F9F), size: 24),
          ),
          const SizedBox(width: 12),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Pílula tomada!', style: TextStyle(fontFamily: 'Livvic', fontSize: 14, color: Colors.white)),
                Text('14º dia · 08:00', style: TextStyle(fontFamily: 'Inter', fontSize: 12, color: Color(0xff939393))),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: Color(0xff939393), size: 16),
        ],
      ),
    );
  }

  Widget _buildPackCalendar() {
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
            'Cartela atual — Julho 2026',
            style: TextStyle(fontFamily: 'Livvic', fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const SizedBox(height: 8),
          _buildWeekLabels(),
          const SizedBox(height: 4),
          _buildPillRow([0,0,0,0,0,0,0]),
          const SizedBox(height: 4),
          _buildPillRow([1,1,1,1,1,2,2]),
          const SizedBox(height: 4),
          _buildPillRow([2,2,2,2,2,2,2]),
          const SizedBox(height: 8),
          _buildLegend(),
        ],
      ),
    );
  }

  Widget _buildWeekLabels() {
    const labels = ['D', 'S', 'T', 'Q', 'Q', 'S', 'S'];
    return Row(
      children: labels.map((l) => Expanded(
        child: Center(child: Text(l, style: const TextStyle(fontFamily: 'Inter', fontSize: 11, color: Color(0xff939393)))),
      )).toList(),
    );
  }

  Widget _buildPillRow(List<int> states) {
    return Row(
      children: states.map((s) {
        Color color;
        if (s == 0) { color = const Color(0xff489F9F); }
        else if (s == 1) { color = const Color(0xff939393); }
        else { color = const Color(0xff313131); }
        return Expanded(
          child: Center(
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                color: color.withAlpha(s == 0 ? 255 : 100),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildLegend() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(mainAxisSize: MainAxisSize.min, children: [
          CircleAvatar(radius: 4, backgroundColor: Color(0xff489F9F)),
          SizedBox(width: 4),
          Text('Tomado', style: TextStyle(fontFamily: 'Inter', fontSize: 10, color: Color(0xff939393))),
        ]),
        SizedBox(width: 12),
        Row(mainAxisSize: MainAxisSize.min, children: [
          CircleAvatar(radius: 4, backgroundColor: Color(0xff939393)),
          SizedBox(width: 4),
          Text('Pendente', style: TextStyle(fontFamily: 'Inter', fontSize: 10, color: Color(0xff939393))),
        ]),
        SizedBox(width: 12),
        Row(mainAxisSize: MainAxisSize.min, children: [
          CircleAvatar(radius: 4, backgroundColor: Color(0xff313131)),
          SizedBox(width: 4),
          Text('Pausa', style: TextStyle(fontFamily: 'Inter', fontSize: 10, color: Color(0xff939393))),
        ]),
      ],
    );
  }

  Widget _buildMonthlyHistory() {
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
            'Registro mensal',
            style: TextStyle(fontFamily: 'Livvic', fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const SizedBox(height: 8),
          _buildHistoryRow('Junho 2026'),
          const SizedBox(height: 8),
          _buildHistoryRow('Maio 2026'),
          const SizedBox(height: 8),
          _buildHistoryRow('Abril 2026'),
        ],
      ),
    );
  }

  Widget _buildHistoryRow(String label) {
    return Row(
      children: [
        const Icon(Icons.circle, size: 8, color: Color(0xff489F9F)),
        const SizedBox(width: 8),
        Text(label, style: const TextStyle(fontFamily: 'Inter', fontSize: 12, color: Color(0xff939393))),
      ],
    );
  }

  Widget _buildReminderSettings() {
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
            'Lembretes',
            style: TextStyle(fontFamily: 'Livvic', fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Ativar notificações', style: TextStyle(fontFamily: 'Inter', fontSize: 12, color: Color(0xff939393))),
              const Icon(Icons.toggle_on, color: Color(0xff489F9F), size: 28),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Horário do lembrete', style: TextStyle(fontFamily: 'Inter', fontSize: 12, color: Color(0xff939393))),
              const Text('08:00', style: TextStyle(fontFamily: 'Inter', fontSize: 12, color: Colors.white)),
            ],
          ),
          const Divider(color: Color(0xff313131), height: 16),
          const Text(
            'Notificações ativadas — próximo alerta amanhã às 08:00',
            style: TextStyle(fontFamily: 'Inter', fontSize: 10, color: Color(0xff939393)),
          ),
        ],
      ),
    );
  }
}
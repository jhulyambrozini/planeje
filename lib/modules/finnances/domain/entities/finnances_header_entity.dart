class FinnancesHeaderEntity {
  final String id;
  final int year;
  final String month;
  final double totalReceived;
  final double totalSpent;

  FinnancesHeaderEntity({
    required this.id,
    required this.year,
    required this.month,
    required this.totalReceived,
    required this.totalSpent,
  });

  double get totalRemaining {
    return totalReceived - totalSpent;
  }

  factory FinnancesHeaderEntity.empty() {
    return FinnancesHeaderEntity(
      id: '',
      year: 0,
      month: '',
      totalReceived: 0,
      totalSpent: 0,
    );
  }
}

class FinnancesHeaderEntity {
  final String id;
  final int year;
  final String month;
  final String totalReceived;
  final String totalSpent;

  FinnancesHeaderEntity({
    required this.id,
    required this.year,
    required this.month,
    required this.totalReceived,
    required this.totalSpent,
  });
}

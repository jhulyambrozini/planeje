class MenstrualCycleTrackingEntity {
  final String id;
  final DateTime startDate;
  final DateTime? endDate;
  final int? daysDuration;
  final bool predictve;

  MenstrualCycleTrackingEntity({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.daysDuration,
    required this.predictve,
  });
}

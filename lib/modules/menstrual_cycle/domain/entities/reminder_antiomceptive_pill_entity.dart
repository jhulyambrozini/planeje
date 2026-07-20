class ReminderAntiomceptivePillEntity {
  final String id;

  final DateTime? firstRememberTime;
  final DateTime? secondRememberTime;
  final DateTime? thirdRememberTime;

  final bool active;
  final int minutesInAdvance;

  final bool monday;
  final bool tuesday;
  final bool wednesday;
  final bool thursday;
  final bool friday;
  final bool saturday;
  final bool sunday;

  final DateTime createdAt;
  final DateTime? updatedAt;

  ReminderAntiomceptivePillEntity({
    required this.id,
    required this.firstRememberTime,
    required this.secondRememberTime,
    required this.thirdRememberTime,
    required this.active,
    required this.minutesInAdvance,
    required this.monday,
    required this.tuesday,
    required this.wednesday,
    required this.thursday,
    required this.friday,
    required this.saturday,
    required this.sunday,
    required this.createdAt,
    required this.updatedAt,
  });
}

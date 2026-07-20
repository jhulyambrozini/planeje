class MesnstrualCycleUserInfosEntity {
  final String id;
  final String name;
  final int? averageCycleDuration;
  final int? durationMenstruation;
  final bool notificationsActive;
  final String? contraceptiveType;
  final DateTime? contraceptiveStartDate;
  final int? posologia;
  final bool makePause;
  final int daysPause;

  MesnstrualCycleUserInfosEntity({
    required this.id,
    required this.name,
    required this.averageCycleDuration,
    required this.durationMenstruation,
    required this.notificationsActive,
    required this.contraceptiveType,
    required this.contraceptiveStartDate,
    required this.posologia,
    required this.makePause,
    required this.daysPause,
  });
}

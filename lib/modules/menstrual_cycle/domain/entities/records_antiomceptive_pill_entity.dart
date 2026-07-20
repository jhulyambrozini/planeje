class RecordsAntiomceptivePillEntity {
  final String id;
  final DateTime registerDate;
  final DateTime registerHour;
  final bool taked;
  final bool inHour;
  final int? delayMinutes;
  final bool sheForgot;
  final bool dayInPause;
  final int? medicationDay;
  final bool isFirstDoseBlisterPack;
  final bool isLastDoseInBlisterPack;
  final bool isMenstruationDay;
  final bool notificationSent;
  final bool notificationSeer;

  RecordsAntiomceptivePillEntity({
    required this.id,
    required this.registerDate,
    required this.registerHour,
    required this.taked,
    required this.inHour,
    required this.delayMinutes,
    required this.sheForgot,
    required this.dayInPause,
    required this.medicationDay,
    required this.isFirstDoseBlisterPack,
    required this.isLastDoseInBlisterPack,
    required this.isMenstruationDay,
    required this.notificationSent,
    required this.notificationSeer,
  });
}

class FinnancesTransactionEntity {
  final String id;
  final String finnacesId;
  final String tag;
  final String description;
  final String value;
  final bool isCashInflow;

  FinnancesTransactionEntity({
    required this.id,
    required this.finnacesId,
    required this.tag,
    required this.description,
    required this.value,
    required this.isCashInflow,
  });
}

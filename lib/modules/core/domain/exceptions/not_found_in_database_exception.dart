class NotFoundInDatabaseException implements Exception {
  final String message;

  NotFoundInDatabaseException({required this.message});

  @override
  String toString() {
    return message;
  }
}

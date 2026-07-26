abstract class ErrorGeneralContract {
  final String title;
  final String message;
  final String? description;
  ErrorGeneralContract({
    required this.title,
    required this.message,
    required this.description,
  });
}

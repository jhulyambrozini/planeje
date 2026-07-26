abstract class SaveFinnanceFailure {
  final String title;
  final String message;
  final String? description;
  SaveFinnanceFailure({
    this.title = 'Salvar cabeçalho financeiro',
    required this.message,
    required this.description,
  });
}

class ErrorSaveFinnance extends SaveFinnanceFailure {
  ErrorSaveFinnance({required super.message, super.description});
}

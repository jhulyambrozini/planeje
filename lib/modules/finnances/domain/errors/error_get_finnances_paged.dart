abstract class GetFinnancesPagedFailure {
  final String title;
  final String message;
  final String? description;
  GetFinnancesPagedFailure({
    this.title = 'Buscar Histórico financeiro',
    required this.message,
    required this.description,
  });
}

class ErrorGetFinnancesPaged extends GetFinnancesPagedFailure {
  ErrorGetFinnancesPaged({required super.message, super.description});
}

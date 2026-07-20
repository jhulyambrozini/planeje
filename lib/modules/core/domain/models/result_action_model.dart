class ResultActionModel<T> {
  final bool success;
  final String message;
  final T? data;

  ResultActionModel._({
    required this.success,
    required this.message,
    this.data,
  });

  factory ResultActionModel.success({String? message, T? data}) {
    return ResultActionModel._(
      success: true,
      message: message ?? '',
      data: data,
    );
  }

  factory ResultActionModel.failure(String message) {
    return ResultActionModel._(success: false, message: message);
  }

  @override
  String toString() {
    return '''
      ResultActionModel(
       success: $success,
       message: $message,
     );
    ''';
  }
}

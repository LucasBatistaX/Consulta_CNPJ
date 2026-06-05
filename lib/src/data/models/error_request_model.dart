class ErrorRequestModel {
  final int statusCode;
  final String titulo;

  ErrorRequestModel({required this.statusCode, required this.titulo});

  factory ErrorRequestModel.fromMap(Map<String, dynamic> map) {
    return ErrorRequestModel(
      statusCode: map['statusCode'] ?? 0,
      titulo: map['titulo'] ?? '',
    );
  }

}
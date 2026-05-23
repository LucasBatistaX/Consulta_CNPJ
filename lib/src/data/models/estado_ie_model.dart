class EstadoIeModel {
  final String nome;
  final String sigla;

  EstadoIeModel({
    required this.nome,
    required this.sigla,
  });

  factory EstadoIeModel.fromMap(Map <String, dynamic> map) {
    return EstadoIeModel(
      nome: map['nome'] ?? '',
      sigla: map['sigla'] ?? '',
    );
  }
}
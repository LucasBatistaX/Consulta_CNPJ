import 'package:consulta_cnpj/src/data/models/estado_ie_model.dart';

class InscricaoEstadualModel {

  final String inscricaoEstadual;
  final bool ativa;
  final EstadoIeModel estado;
  final EstadoIeModel sigla;


  InscricaoEstadualModel({
    required this.inscricaoEstadual,
    required this.ativa,
    required this.estado,
    required this.sigla,
  });


  factory InscricaoEstadualModel.fromMap(Map<String, dynamic> map) {
    return InscricaoEstadualModel(
      inscricaoEstadual: map['inscricao_estadual'] ?? '',
      ativa: map['ativo'] ?? false,
      estado: EstadoIeModel.fromMap(map['estado'] ?? {}),
      sigla: EstadoIeModel.fromMap(map['sigla'] ?? {}),
    );
  }
}
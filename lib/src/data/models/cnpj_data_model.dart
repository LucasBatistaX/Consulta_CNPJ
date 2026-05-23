import 'package:consulta_cnpj/src/data/models/inscricao_estadual_model.dart';

class CnpjDataModel {
  int statusCode;
  String cnpj;
  String status;
  String razaoSocial;
  List<InscricaoEstadualModel> inscricaoEstadual;
  String estado;
  String cidade;
  String cep;
  String bairro;
  String logradouro;
  String numero;
  String complemento;
  String telefone;
  String email;

  CnpjDataModel({ 
    required this.statusCode,
    required this.cnpj,
    required this.status,
    required this.razaoSocial,
    required this.inscricaoEstadual,
    required this.estado,
    required this.cidade,
    required this.cep,
    required this.bairro,
    required this.logradouro,
    required this.numero,
    required this.complemento,
    required this.telefone,
    required this.email,
  });

  factory CnpjDataModel.fromMap(Map<String, dynamic> map) {
    final estabelecimento = map['estabelecimento'] ?? {};

    final ddd = estabelecimento['ddd1'] ?? '';
    final telefone = estabelecimento['telefone1'] ?? '';
    final inscricoes = estabelecimento['inscricoes_estaduais'] ?? [];


    final inscricaoEstadual = (inscricoes as List)
        .map((ie) => InscricaoEstadualModel.fromMap(ie))
        .toList();

    return CnpjDataModel(
      statusCode: map['status_code'] ?? 0,
      cnpj: estabelecimento['cnpj'] ?? '-',
      status: estabelecimento['situacao_cadastral'] ?? '-',
      razaoSocial: map['razao_social'] ?? '-',

      estado: estabelecimento['estado']?['nome'] ?? '-',
      cidade: estabelecimento['cidade']?['nome'] ?? '-',
      cep: estabelecimento['cep'] ?? '-',
      bairro: estabelecimento['bairro'] ?? '-',
      logradouro: estabelecimento['logradouro'] ?? '-',
      numero: estabelecimento['numero'] ?? '-',
      complemento: estabelecimento['complemento'] ?? '-',


      telefone: '($ddd) $telefone',
      email: estabelecimento['email'] ?? '-',

      inscricaoEstadual: inscricaoEstadual,
    );
  }
}

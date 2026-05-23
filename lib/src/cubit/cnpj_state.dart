import 'package:consulta_cnpj/src/data/models/cnpj_data_model.dart';

sealed class CnpjState {}

final class CnpjInitial extends CnpjState{}

final class CnpjLoading extends CnpjState{}

final class CnpjLoaded extends CnpjState{
  final CnpjDataModel cnpj;

  CnpjLoaded(this.cnpj);
}

final class CnpjError extends CnpjState {
  final int statusCode;
  final String message;

  CnpjError(this.statusCode, this.message);
}

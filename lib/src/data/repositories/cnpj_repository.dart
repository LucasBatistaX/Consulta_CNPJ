import 'package:consulta_cnpj/src/data/models/cnpj_data_model.dart';
import 'package:consulta_cnpj/src/data/models/error_request_model.dart';
import 'package:dio/dio.dart';
import 'package:consulta_cnpj/src/utils/enums/enum_status_code.dart';

class CnpjRepository {
  final Dio dio;

  CnpjRepository(this.dio);

  Future getDataCnpj(String cnpj) async {
    try {
      var response = await dio.get(
        "https://publica.cnpj.ws/cnpj/$cnpj",
        options: Options(validateStatus: (_) => true),
      );

      switch (response.statusCode) {
        case 200:
          return CnpjDataModel.fromMap(response.data);

        default:
          return ErrorRequestModel(
            statusCode: response.statusCode ?? 0,
            titulo: StatusCodeError.statusCode400.message,
          );
      }
    } on DioException catch (e) {
      final status = StatusCodeError.fromCode(e.response?.statusCode ?? 0);
      return ErrorRequestModel(
        statusCode: status?.code ?? 0,
        titulo: status?.message ?? 'Erro desconhecido',
      );
    }
  }
}









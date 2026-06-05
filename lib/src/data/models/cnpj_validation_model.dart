import 'package:consulta_cnpj/src/validations/validation_cnpj_mixin.dart';
import 'package:consulta_cnpj/src/widgets/error_validation.dart';
import 'package:flutter/material.dart';

class CnpjModel extends ChangeNotifier with ValidationCnpjMixin {
  
  String _cnpj;

  CnpjModel({String cnpj = "12.345.678/0001-90"}) : _cnpj = cnpj;

  //setter
  void setCnpj(String value) {
    _cnpj = value;
    notifyListeners();
  }

  //getter
  String getCnpj() {
    return _cnpj;
  }

  Widget isValid() {
    var result = validatorForm(_cnpj);

    if (result != null) {
      return ErrorValidation(message: result);
    }
    return SizedBox.shrink();
  }
}

import 'package:consulta_cnpj/src/utils/app_sizes.dart';

mixin ValidationCnpjMixin<CnpjModel>{

  //Regra de validação do CNPJ;

   String? validatorForm(String value){
    if(value.isEmpty){
      return "O campo não pode ser vazio.";
    } else if(value.length != AppSizes.s18){
      return "CNPJ inválido.";      
    } else {
      return null;
    }
  }

} 
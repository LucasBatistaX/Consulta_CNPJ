import 'package:flutter/material.dart';

class ValidationMask {

  TextEditingController cnpjController;

  ValidationMask({required this.cnpjController});


  void maskValidation(String value) {
    //Retirando qualquer caracter que não seja um número;
    String newValue = value.replaceAll(RegExp(r'[^0-9]'), '');
    //Variavel que constará o resultado da mascara;
    String result = "";

    //Estrutura de repetição onde vai por os caracteres especiais;
    for(int i = 0; i < newValue.length; i++){
      if (i == 2) result += ".";
      if (i == 5) result += ".";
      if (i == 8) result += "/";
      if (i == 12) result += "-";


      //Impedindo que cnpj exceda 14 numeros;
      if(i < 14){
        result += newValue[i];
      }
    }
    // Fazendo com oque o cursor fique sempre no final da digitação
    cnpjController.value = TextEditingValue(
      text: result,
      selection: TextSelection.collapsed(offset: result.length),
    );
  }


}
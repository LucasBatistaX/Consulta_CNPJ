import 'package:consulta_cnpj/src/utils/app_sizes.dart';
import 'package:flutter/material.dart';

class ErrorValidation extends StatelessWidget {
  const ErrorValidation({super.key, required this.message});

   final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppSizes.s30,left: AppSizes.s20, right: AppSizes.s20, ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red.shade300.withAlpha(AppSizes.si30),
          borderRadius: BorderRadius.circular(AppSizes.s12),
          border: BoxBorder.all(color: Colors.red.shade900.withAlpha(AppSizes.si100))
        ),
        height:AppSizes.s56,
        width: AppSizes.w736,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.s12),
              child: Center(child: Icon(Icons.error_outline, color: Colors.red,)),
            ),
            Expanded(child: Text(message, style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
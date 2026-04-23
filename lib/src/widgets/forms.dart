import 'package:consulta_cnpj/src/utils/app_colors.dart';
import 'package:consulta_cnpj/src/utils/app_sizes.dart';
import 'package:flutter/material.dart';

class Forms extends StatelessWidget {
  const Forms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: AppSizes.s40,
              left: AppSizes.s20,
              right: AppSizes.s20,
            ),
            child: TextField(
              decoration: InputDecoration(
                fillColor: AppColors.fillColor,
                filled: true,
                contentPadding: EdgeInsets.all(AppSizes.s24),
                constraints: BoxConstraints(
                  maxWidth: AppSizes.w736,
                  //maxHeight: 56,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizes.s10),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.greenPrimary,
                    width: AppSizes.s2,
                  ),
                  borderRadius: BorderRadius.circular(AppSizes.s10),
                ),
                label: Center(child: Text("12.345.678/0001-90")),
                labelStyle: TextStyle(
                  color: Colors.white.withAlpha(AppSizes.si80),
                ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: AppSizes.s16),
              keyboardType: TextInputType.numberWithOptions(),
            ),
          ),
          SizedBox(height: AppSizes.s12,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.s20),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                maximumSize: Size(AppSizes.w736, AppSizes.s56),
                backgroundColor: AppColors.greenPrimary,
                padding: EdgeInsets.all(AppSizes.s24),
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(AppSizes.s10)),
              ),
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Icon(Icons.search, color: AppColors.backgroundColor, size: AppSizes.s26,),
                  SizedBox(width: AppSizes.s8,),
                  Text(
                    "Buscar CNPJ",
                    style: TextStyle(color: AppColors.backgroundColor, fontSize: AppSizes.s16, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:consulta_cnpj/src/utils/app_assets.dart';
import 'package:consulta_cnpj/src/utils/app_sizes.dart';
import 'package:consulta_cnpj/src/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppSizes.s64),
        Container(
          height: AppSizes.s56,
          width: AppSizes.s56,
          decoration: BoxDecoration(
            color: Colors.green.shade900.withAlpha(AppSizes.si100),
            borderRadius: BorderRadius.circular(AppSizes.s16,),
            border: BoxBorder.all(color: Colors.green.shade900)
          ),
          child: Image.asset(AppAssets.logo, height: AppSizes.s100),
        ),
        SizedBox(height: AppSizes.s20),
      Row(
        crossAxisAlignment: .center,
        mainAxisAlignment: .center,
        spacing: AppSizes.s8,
        children: [
          RichText(
            text: TextSpan(
              text: "Consulta",style: AppTextStyles.titleFirstWord
            )
          ),
          RichText(text: TextSpan(
            text: "CNPJ",
            style: AppTextStyles.titleSecondWord
          )),
        ],
      ),
      Text("Informações públicas da Receita Federal.", style: AppTextStyles.subTitle)
      ],
    );
  }
}
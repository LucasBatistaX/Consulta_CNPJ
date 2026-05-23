import 'package:consulta_cnpj/src/utils/app_colors.dart';
import 'package:consulta_cnpj/src/utils/app_sizes.dart';
import 'package:consulta_cnpj/src/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppSizes.s40,
        right: AppSizes.s20,
        left: AppSizes.s20,
      ),
      child: Column(
        children: [
          SizedBox(
            width: AppSizes.w736,
            child: Divider(
              color: AppColors.fillColor,
              thickness: AppSizes.s2,
            ),
          ),
          SizedBox(height: AppSizes.s30,),
          SizedBox(
            width: AppSizes.w736,
            child: Text(
              textAlign: .center,
              "Essas informações são públicas, não confidenciais e sua divulgação está em conformidade com o Decreto nº 8.777/2016, e a Lei nº12.527/2011 que assegura o direito constitucional de acesso à informação, mas temos total consideração pelo direito individual de privacidade.", style: AppTextStyles.subTitle,
            ),
          ), 
        ],
      ),
    );
  }
}
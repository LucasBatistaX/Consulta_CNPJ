import 'package:consulta_cnpj/src/utils/app_colors.dart';
import 'package:consulta_cnpj/src/utils/app_sizes.dart';
import 'package:consulta_cnpj/src/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class AddressContentMobile extends StatelessWidget {
  const AddressContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.s24),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              Container(
                height: AppSizes.s32,
                width: AppSizes.s32,
                decoration: BoxDecoration(
                  color: Colors.green.shade900.withAlpha(AppSizes.si100),
                  borderRadius: BorderRadius.circular(AppSizes.s12),
                ),
                child: Icon(
                  Icons.location_on_outlined,
                  color: AppColors.greenPrimary,
                  size: AppSizes.s18,
                ),
              ),
              SizedBox(width: AppSizes.s10),
              Text("Endereço", style: AppTextStyles.titleCards),
            ],
          ),
          Column(
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: AppSizes.s16),
              Text("ESTADO", style: AppTextStyles.subtitleCards),
              SizedBox(height: AppSizes.s2),
              SelectableText("SP", style: AppTextStyles.reponseDataCard),
              Divider(color: AppColors.fillColor),
              SizedBox(height: AppSizes.s2),
              Text("CIDADE", style: AppTextStyles.subtitleCards),
              SizedBox(height: AppSizes.s2),
              SelectableText("MAUÁ", style: AppTextStyles.reponseDataCard),
              Divider(color: AppColors.fillColor),
              SizedBox(height: AppSizes.s2),
              Text("CEP", style: AppTextStyles.subtitleCards),
              SizedBox(height: AppSizes.s2),
              SelectableText("09321-375", style: AppTextStyles.reponseDataCard),
              Divider(color: AppColors.fillColor),
              SizedBox(height: AppSizes.s2),
              Text("BAIRRO", style: AppTextStyles.subtitleCards),
              SizedBox(height: AppSizes.s2),
              SelectableText(
                "VILA GUARANI",
                style: AppTextStyles.reponseDataCard,
              ),
              Divider(color: AppColors.fillColor),
              SizedBox(height: AppSizes.s2),
              Text("LOUGRADOURO", style: AppTextStyles.subtitleCards),
              SizedBox(height: AppSizes.s2),
              SelectableText(
                "RUA CARLOS DE LAET",
                style: AppTextStyles.reponseDataCard,
              ),
              Divider(color: AppColors.fillColor),
              SizedBox(height: AppSizes.s2),
              Text("NUMERO", style: AppTextStyles.subtitleCards),
              SizedBox(height: AppSizes.s2),
              SelectableText("72", style: AppTextStyles.reponseDataCard),
              Divider(color: AppColors.fillColor),
              SizedBox(height: AppSizes.s2),
              Text("COMPLEMENTO", style: AppTextStyles.subtitleCards),
              SizedBox(height: AppSizes.s2),
              SelectableText(
                "APARTAMENTO 21",
                style: AppTextStyles.reponseDataCard,
              ),
              SizedBox(height: AppSizes.s2),
            ],
          ),
        ],
      ),
    );
  }
}

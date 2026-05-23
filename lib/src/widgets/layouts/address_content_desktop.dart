import 'package:consulta_cnpj/src/utils/app_colors.dart';
import 'package:consulta_cnpj/src/utils/app_sizes.dart';
import 'package:consulta_cnpj/src/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class AddressContentDesktop extends StatelessWidget {
  const AddressContentDesktop({super.key, required this.estado, required this.cidade, required this.cep, required this.bairro, required this.logradouro, required this.numero, required this.complemento});

  final String estado;
  final String cidade;
  final String cep;
  final String bairro;
  final String logradouro;
  final String numero;
  final String complemento;  

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
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    SizedBox(height: AppSizes.s16),
                    Text("ESTADO", style: AppTextStyles.subtitleCards),
                    SizedBox(height: AppSizes.s2),
                    SelectableText(estado, style: AppTextStyles.reponseDataCard),
                    Divider(color: AppColors.fillColor),
                    SizedBox(height: AppSizes.s2),
                    Text("CIDADE", style: AppTextStyles.subtitleCards),
                    SizedBox(height: AppSizes.s2),
                    SelectableText(
                      cidade,
                      style: AppTextStyles.reponseDataCard,
                    ),
                    Divider(color: AppColors.fillColor),
                    SizedBox(height: AppSizes.s2),
                    Text("CEP", style: AppTextStyles.subtitleCards),
                    SizedBox(height: AppSizes.s2),
                    SelectableText(
                      cep,
                      style: AppTextStyles.reponseDataCard,
                    ),
                    Divider(color: AppColors.fillColor),
                    SizedBox(height: AppSizes.s2),
                    Text("BAIRRO", style: AppTextStyles.subtitleCards),
                    SizedBox(height: AppSizes.s2),
                    SelectableText(
                      bairro,
                      style: AppTextStyles.reponseDataCard,
                    ),
                    SizedBox(height: AppSizes.s2),
                  ],
                ),
              ),
              SizedBox(width: AppSizes.s100),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    SizedBox(height: AppSizes.s2),
                    Text("LOGRADOURO", style: AppTextStyles.subtitleCards),
                    SizedBox(height: AppSizes.s2),
                    SelectableText(
                      logradouro,
                      style: AppTextStyles.reponseDataCard,
                    ),
                    Divider(color: AppColors.fillColor),
                    SizedBox(height: AppSizes.s2),
                    Text("NUMERO", style: AppTextStyles.subtitleCards),
                    SizedBox(height: AppSizes.s2),
                    SelectableText(numero, style: AppTextStyles.reponseDataCard),
                    Divider(color: AppColors.fillColor),
                    SizedBox(height: AppSizes.s2),
                    Text("COMPLEMENTO", style: AppTextStyles.subtitleCards),
                    SizedBox(height: AppSizes.s2),
                    SelectableText(
                      complemento,
                      style: AppTextStyles.reponseDataCard,
                    ),
                    SizedBox(height: AppSizes.s2),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

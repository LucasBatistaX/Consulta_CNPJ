import 'package:consulta_cnpj/src/utils/app_colors.dart';
import 'package:consulta_cnpj/src/utils/app_sizes.dart';
import 'package:consulta_cnpj/src/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ContactContentDesktop extends StatelessWidget {
  const ContactContentDesktop({super.key, required this.telefone, required this.email});

  final String telefone;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppSizes.s20,
        right: AppSizes.s20,
        top: AppSizes.s16,
      ),
      child: Container(
        constraints: BoxConstraints(
          minHeight: AppSizes.s150,
          minWidth: AppSizes.w736,
          maxWidth: AppSizes.w736,
        ),
        decoration: BoxDecoration(
          color: AppColors.backgroundResponseCard,
          borderRadius: BorderRadius.circular(AppSizes.s12),
          border: Border.all(color: AppColors.borderColorResponseCard),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.s24),
          child: Column(
            crossAxisAlignment: .center,
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
                      Icons.phone,
                      color: AppColors.greenPrimary,
                      size: AppSizes.s18,
                    ),
                  ),
                  SizedBox(width: AppSizes.s10),
                  Text("Contatos", style: AppTextStyles.titleCards),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        SizedBox(height: AppSizes.s16),
                        Text("TELEFONE", style: AppTextStyles.subtitleCards),
                        SizedBox(height: AppSizes.s2),
                        SelectableText(
                          telefone.isEmpty ? "Não informado" : telefone,
                          style: AppTextStyles.reponseDataCard,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        SizedBox(height: AppSizes.s16),
                        Text("E-MAIL", style: AppTextStyles.subtitleCards),
                        SizedBox(height: AppSizes.s2),
                        SelectableText(
                          email.isNotEmpty ? email : "Não informado",
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
        ),
      ),
    );
  }
}

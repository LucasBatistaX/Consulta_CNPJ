import 'package:consulta_cnpj/src/utils/app_colors.dart';
import 'package:consulta_cnpj/src/utils/app_sizes.dart';
import 'package:consulta_cnpj/src/utils/app_text_styles.dart';
import 'package:consulta_cnpj/src/widgets/layouts/address_content_desktop.dart';
import 'package:consulta_cnpj/src/widgets/layouts/address_content_mobile.dart';
import 'package:consulta_cnpj/src/widgets/layouts/contact_content_desktop.dart';
import 'package:consulta_cnpj/src/widgets/layouts/contact_content_mobile.dart';
import 'package:flutter/material.dart';

class ResponseCard extends StatelessWidget {
  const ResponseCard({super.key});


  @override
  Widget build(BuildContext context) {
    double screen = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: AppSizes.s20,
            right: AppSizes.s20,
            top: AppSizes.s36,
          ),
          child: Container(
            constraints: BoxConstraints(
              minHeight: AppSizes.s200,
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
                crossAxisAlignment: .start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: AppSizes.s32,
                        width: AppSizes.s32,
                        decoration: BoxDecoration(
                          color: Colors.green.shade900.withAlpha(
                            AppSizes.si100,
                          ),
                          borderRadius: BorderRadius.circular(AppSizes.s12),
                        ),
                        child: Icon(
                          Icons.corporate_fare_outlined,
                          color: AppColors.greenPrimary,
                          size: AppSizes.s18,
                        ),
                      ),
                      SizedBox(width: AppSizes.s10),
                      Text("Dados da empresa", style: AppTextStyles.titleCards),
                    ],
                  ),
                  SizedBox(height: AppSizes.s16),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text("SITUAÇÃO", style: AppTextStyles.subtitleCards),
                      Container(
                        height: AppSizes.s24,
                        width: AppSizes.s86,
                        decoration: BoxDecoration(
                          color: Colors.red.shade900.withAlpha(AppSizes.si60),
                          borderRadius: BorderRadius.circular(AppSizes.s16),
                          border: Border.all(color: Colors.red.shade800),
                        ),
                        child: Row(
                          mainAxisAlignment: .center,
                          children: [
                            CircleAvatar(
                              radius: AppSizes.s4,
                              backgroundColor: Colors.red,
                            ),
                            SizedBox(width: AppSizes.s4),
                            Text(
                              "Inativo",
                              style: TextStyle(
                                fontSize: AppSizes.s12,
                                color: Colors.red.shade500,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppSizes.s16),
                  Text("CNPJ", style: AppTextStyles.subtitleCards),
                  SizedBox(height: AppSizes.s2),
                  SelectableText(
                    "12345678000190",
                    style: AppTextStyles.reponseDataCard,
                  ),
                  Divider(color: AppColors.fillColor),
                  SizedBox(height: AppSizes.s2),
                  Text("RAZÃO SOCIAL", style: AppTextStyles.subtitleCards),
                  SizedBox(height: AppSizes.s2),
                  SelectableText(
                    "59.690.013 LEONARDO BATISTA DA SILVA",
                    style: AppTextStyles.reponseDataCard,
                  ),
                  Divider(color: AppColors.fillColor),
                  SizedBox(height: AppSizes.s2),
                  Text("REGIME TRIBUTÁRIO", style: AppTextStyles.subtitleCards),
                  SizedBox(height: AppSizes.s2),
                  SelectableText(
                    "Simples nacional",
                    style: AppTextStyles.reponseDataCard,
                  ),
                  Divider(color: AppColors.fillColor),
                  SizedBox(height: AppSizes.s18),
                  Text("INSCRIÇÕES ESTADUAIS", style: AppTextStyles.subtitleCards),
                  SizedBox(height: AppSizes.s18),
                  Text("I.E - SP", style: AppTextStyles.subtitleCards),
                  SizedBox(height: AppSizes.s2),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      SelectableText(
                        "0032457680",
                        style: AppTextStyles.reponseDataCard,
                      ),
                      Container(
                        height: AppSizes.s24,
                        width: AppSizes.s86,
                        decoration: BoxDecoration(
                          color: Colors.red.shade900.withAlpha(AppSizes.si60),
                          borderRadius: BorderRadius.circular(AppSizes.s16),
                          border: Border.all(color: Colors.red.shade800),
                        ),
                        child: Row(
                          mainAxisAlignment: .center,
                          children: [
                            CircleAvatar(
                              radius: AppSizes.s4,
                              backgroundColor: Colors.red,
                            ),
                            SizedBox(width: AppSizes.s4),
                            Text(
                              "inativo",
                              style: TextStyle(
                                fontSize: AppSizes.s12,
                                color: Colors.red.shade500,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppSizes.s2),
                ],
              ),
            ),
          ),
        ),

        //Widget de endereço.

        Padding(
          padding: const EdgeInsets.only(
            left: AppSizes.s20,
            right: AppSizes.s20,
            top: AppSizes.s16,
          ),
          child: Container(
            constraints: BoxConstraints(
              minHeight: AppSizes.s200,
              minWidth: AppSizes.w736,
              maxWidth: AppSizes.w736,
            ),
            decoration: BoxDecoration(
              color: AppColors.backgroundResponseCard,
              borderRadius: BorderRadius.circular(AppSizes.s12),
              border: Border.all(color: AppColors.borderColorResponseCard),
            ),
            child: Builder(builder:(context) => screen <= AppSizes.si600 ? AddressContentMobile() : AddressContentDesktop(),)
          ),
        ),

        //widget de contatos;
        Builder(builder: (context) => 
         screen <= AppSizes.si600 ? ContactContentMobile() : ContactContentDesktop())
        
      ],
    );
  }
}





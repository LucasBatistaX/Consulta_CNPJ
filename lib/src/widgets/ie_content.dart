
import 'package:consulta_cnpj/src/data/models/inscricao_estadual_model.dart';
import 'package:consulta_cnpj/src/utils/app_colors.dart';
import 'package:consulta_cnpj/src/utils/app_sizes.dart';
import 'package:consulta_cnpj/src/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class IeContent extends StatelessWidget {
  const IeContent({
    super.key,
    required this.model,
  });

  final InscricaoEstadualModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          '${model.estado.nome} - ${model.estado.sigla}',
          style: AppTextStyles.subtitleCards,
        ),
        SizedBox(height: AppSizes.s2),
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            SelectableText(
              model.inscricaoEstadual.isEmpty ? '-' : model.inscricaoEstadual,
              style: AppTextStyles.reponseDataCard,
            ),
            Container(
              height: AppSizes.s24,
              width: AppSizes.s86,
              decoration: BoxDecoration(
                color: model.ativa ? Colors.green.shade900.withAlpha(
                                  AppSizes.si60) : Colors.red.shade900.withAlpha(
                  AppSizes.si60,
                ),
                borderRadius: BorderRadius.circular(
                  AppSizes.s16,
                ),
                border: Border.all(
                  color: model.ativa ? Colors.green.shade800 : Colors.red.shade800,
                ),
              ),
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  CircleAvatar(
                    radius: AppSizes.s4,
                    backgroundColor: model.ativa ? Colors.green.shade500 : Colors.red.shade500,
                  ),
                  SizedBox(width: AppSizes.s4),
                  Text(
                    model.ativa ? "Ativa" : "Inativa",
                    style: TextStyle(
                      fontSize: AppSizes.s12,
                      color: model.ativa ? Colors.green.shade500 : Colors.red.shade500,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
         SizedBox(height: AppSizes.s8,),
         Divider(color: AppColors.fillColor),
         SizedBox(height: AppSizes.s12,)
      ],
    );
  }
}
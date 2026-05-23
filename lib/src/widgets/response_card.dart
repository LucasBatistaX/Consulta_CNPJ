import 'package:consulta_cnpj/src/cubit/cnpj_cubit.dart';
import 'package:consulta_cnpj/src/cubit/cnpj_state.dart';
import 'package:consulta_cnpj/src/utils/app_colors.dart';
import 'package:consulta_cnpj/src/utils/app_sizes.dart';
import 'package:consulta_cnpj/src/utils/app_text_styles.dart';
import 'package:consulta_cnpj/src/utils/enums/enum_status_code.dart';
import 'package:consulta_cnpj/src/widgets/error_validation.dart';
import 'package:consulta_cnpj/src/widgets/ie_content.dart';
import 'package:consulta_cnpj/src/widgets/layouts/address_content_desktop.dart';
import 'package:consulta_cnpj/src/widgets/layouts/address_content_mobile.dart';
import 'package:consulta_cnpj/src/widgets/layouts/contact_content_desktop.dart';
import 'package:consulta_cnpj/src/widgets/layouts/contact_content_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResponseCard extends StatefulWidget {
  const ResponseCard({super.key});

  @override
  State<ResponseCard> createState() => _ResponseCardState();
}

class _ResponseCardState extends State<ResponseCard> {
  @override
  Widget build(BuildContext context) {
    double screen = MediaQuery.of(context).size.width;

    return BlocBuilder<CnpjCubit, CnpjState>(
      builder: (context, state) {
        return switch (state) {
          CnpjInitial() => const SizedBox.shrink(),

          CnpjLoading() => Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSizes.s40),
            child: const CircularProgressIndicator(
              color: AppColors.greenPrimary,
            ),
          ),

          CnpjLoaded(cnpj: var model) => 
          Column(
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
                    border: Border.all(
                      color: AppColors.borderColorResponseCard,
                    ),
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
                                borderRadius: BorderRadius.circular(
                                  AppSizes.s12,
                                ),
                              ),
                              child: Icon(
                                Icons.corporate_fare_outlined,
                                color: AppColors.greenPrimary,
                                size: AppSizes.s18,
                              ),
                            ),
                            SizedBox(width: AppSizes.s10),
                            Text(
                              "Dados da empresa",
                              style: AppTextStyles.titleCards,
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.s16),
                        Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Text(
                              "SITUAÇÃO",
                              style: AppTextStyles.subtitleCards,
                            ),
                            Container(
                              height: AppSizes.s24,
                              width: AppSizes.s86,
                              decoration: BoxDecoration(
                                color: model.status == "Ativa" ? Colors.green.shade900.withAlpha(
                                  AppSizes.si60,
                                ) : Colors.red.shade900.withAlpha(
                                  AppSizes.si60,
                                ),
                                borderRadius: BorderRadius.circular(
                                  AppSizes.s16,
                                ),
                                border: model.status == "Ativa" ? Border.all(color: Colors.green.shade800) : Border.all(color: Colors.red.shade800),
                              ),
                              child: Row(
                                mainAxisAlignment: .center,
                                children: [
                                  CircleAvatar(
                                    radius: AppSizes.s4,
                                    backgroundColor: model.status == "Ativa" ? Colors.green : Colors.red,
                                  ),
                                  SizedBox(width: AppSizes.s4),
                                  Text(
                                    model.status,
                                    style: TextStyle(
                                      fontSize: AppSizes.s12,
                                      color: model.status == "Ativa" ? Colors.green : Colors.red.shade500,
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
                          model.cnpj,
                          style: AppTextStyles.reponseDataCard,
                        ),
                        Divider(color: AppColors.fillColor),
                        SizedBox(height: AppSizes.s2),
                        Text(
                          "RAZÃO SOCIAL",
                          style: AppTextStyles.subtitleCards,
                        ),
                        SizedBox(height: AppSizes.s2),
                        SelectableText(
                          model.razaoSocial,
                          style: AppTextStyles.reponseDataCard,
                        ),
                        Divider(color: AppColors.fillColor),
                        SizedBox(height: AppSizes.s4),
                        Text(
                          "INSCRIÇÕES ESTADUAIS",
                          style: AppTextStyles.subtitleCards,
                        ),
                        SizedBox(height: AppSizes.s18),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: model.inscricaoEstadual.isEmpty ? 1 : model.inscricaoEstadual.length,
                          itemBuilder: (context, index) {
                            return 
                            model.inscricaoEstadual.isEmpty ?
                                 Text(
                                    "Nenhuma inscrição estadual encontrada.",
                                    style: AppTextStyles.reponseDataCard,
                                  )
                                :
                            IeContent(
                              model: model.inscricaoEstadual[index],
                            );
                          },
                        ),
                        SizedBox(height: AppSizes.s2),
                      ],
                    ),
                  ),
                ),
              ),

              // Widget de endereço.
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
                    border: Border.all(
                      color: AppColors.borderColorResponseCard,
                    ),
                  ),
                  child: Builder(
                    builder: (context) => screen <= AppSizes.si600
                        ? AddressContentMobile(
                            estado: model.estado,
                            cidade: model.cidade,
                            cep: model.cep,
                            bairro: model.bairro,
                            logradouro: model.logradouro,
                            numero: model.numero,
                            complemento: model.complemento,
                          )
                        : AddressContentDesktop(
                            estado: model.estado,
                            cidade: model.cidade,
                            cep: model.cep,
                            bairro: model.bairro,
                            logradouro: model.logradouro,
                            numero: model.numero,
                            complemento: model.complemento,
                          ),
                  ),
                ),
              ),

              // widget de contatos;
              Builder(
                builder: (context) => screen <= AppSizes.si600
                    ? ContactContentMobile(
                        telefone: model.telefone,
                        email: model.email,
                      )
                    : ContactContentDesktop(
                        telefone: model.telefone,
                        email: model.email,
                      ),
              ),
            ],
          ),
          CnpjError(statusCode: var statusCode) => statusCode == StatusCodeError.statusCode429.code ? ErrorValidation(message: StatusCodeError.statusCode429.message) : ErrorValidation(message: StatusCodeError.statusCode400.message),
        };
      },
    );
  }
}



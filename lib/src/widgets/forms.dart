import 'package:consulta_cnpj/src/cubit/cnpj_cubit.dart';
import 'package:consulta_cnpj/src/data/models/cnpj_validation_model.dart';
import 'package:consulta_cnpj/src/utils/app_colors.dart';
import 'package:consulta_cnpj/src/utils/app_sizes.dart';
import 'package:consulta_cnpj/src/utils/app_text_styles.dart';
import 'package:consulta_cnpj/src/validations/validation_mask.dart';
import 'package:consulta_cnpj/src/validations/validation_cnpj_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> with ValidationCnpjMixin {
  //Variaveis Late
  late final GlobalKey<FormState> formKey;
  late final TextEditingController cnpjController;
  late final CnpjModel cnpjValidation;
  late final CnpjCubit cubit;
  ValidationMask? mask;


  void buscarCnpj(String value) {
    //validação
    String cnpjClean = value.replaceAll(RegExp(r'[^0-9]'), '');
    var result = validatorForm(cnpjValidation.getCnpj());
    if(result == null){
    cubit.getCnpjRequest(cnpjClean);
    }
  }


  @override
  //Inicio do ciclo de vida da widget;
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    cnpjController = TextEditingController();
    cnpjValidation = CnpjModel();
    mask = ValidationMask(cnpjController: cnpjController);
    cubit = BlocProvider.of<CnpjCubit>(context);
  }

  @override
  void dispose() {
    cnpjValidation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: AppSizes.s40,
              left: AppSizes.s20,
              right: AppSizes.s20,
            ),
            child: TextFormField(
              onFieldSubmitted:(value) {
                cnpjValidation.setCnpj(cnpjController.text);
                buscarCnpj(cnpjValidation.getCnpj());
              },
              onChanged: (value) {
                mask?.maskValidation(cnpjController.text);
              },
              controller: cnpjController,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              //onChanged: formatter,
              decoration: InputDecoration(
                fillColor: AppColors.fillColor,
                filled: true,
                contentPadding: EdgeInsets.all(AppSizes.s24),
                constraints: BoxConstraints(maxWidth: AppSizes.w736),
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
              cursorColor: AppColors.greenPrimary,
              textAlign: TextAlign.center,
              style: AppTextStyles.labelIputStyle,
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(height: AppSizes.s12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.s20),
            child: TextButton(
              onPressed: () {
                cnpjValidation.setCnpj(cnpjController.text);
                buscarCnpj(cnpjValidation.getCnpj());
              },
              style: TextButton.styleFrom(
                maximumSize: Size(AppSizes.w736, AppSizes.s68),
                backgroundColor: AppColors.greenPrimary,
                padding: EdgeInsets.symmetric(vertical: AppSizes.s24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(AppSizes.s10),
                ),
              ),
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Icon(
                    Icons.search,
                    color: AppColors.backgroundColor,
                    size: AppSizes.s26,
                  ),
                  SizedBox(width: AppSizes.s8),
                  Text("Buscar CNPJ", style: AppTextStyles.buttonText),
                ],
              ),
            ),
          ),
          //Erros e alertas do App.
          ListenableBuilder(listenable: cnpjValidation, builder: (context, child) {
            return cnpjValidation.isValid();
          },),
        ],
      ),
    );
  }
}

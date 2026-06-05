import 'package:consulta_cnpj/src/utils/app_colors.dart';
import 'package:consulta_cnpj/src/utils/app_sizes.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle titleFirstWord = TextStyle(
    color: Colors.white,
    fontSize: AppSizes.s36,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle titleSecondWord = TextStyle(
    color: AppColors.greenPrimary,
    fontSize: AppSizes.s36,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle subTitle = TextStyle(
    color: Colors.grey,
    fontSize: AppSizes.s12,
  );

  static const TextStyle footerText = TextStyle(
    color: Colors.grey,
    fontSize: AppSizes.s12,
  );

  static const TextStyle buttonText = TextStyle(
    color: AppColors.backgroundColor,
    fontSize: AppSizes.s16,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle labelIputStyle = TextStyle(
    color: Colors.white,
    fontSize: AppSizes.s16,
  );

  static const TextStyle titleCards = TextStyle(
    color: Colors.white,
    fontSize: AppSizes.s16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle subtitleCards = TextStyle(
    fontSize: AppSizes.s12,
    color: Colors.grey,
  );

  static const TextStyle reponseDataCard = TextStyle(
    color: Colors.white,
  );
}

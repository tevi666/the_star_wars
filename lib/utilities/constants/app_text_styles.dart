import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static get inputHintTS => const TextStyle(color: AppColors.primary);
  static get appBarTS => const TextStyle(color: AppColors.lightBlack);
  static bNbTd(double fontSize) => TextStyle(fontSize: fontSize);
  static globalCardTS(double? fontSize, FontWeight? fontWeight) => TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
      );
  static get favoritesScreenTS =>
      const TextStyle(color: AppColors.grey, fontSize: 25);

  static get homeScreenTS => const TextStyle(fontSize: 20, color: AppColors.grey);
}

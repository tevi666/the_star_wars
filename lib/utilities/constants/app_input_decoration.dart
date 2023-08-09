import 'package:flutter/material.dart';
import 'package:the_star_wars/presentations/widgets/global_icon.dart';
import 'package:the_star_wars/utilities/constants/app_borders.dart';
import 'package:the_star_wars/utilities/constants/app_text_styles.dart';
import 'app_colors.dart';
import 'app_texts.dart';

class AppInputDecoration {
  AppInputDecoration._();

  static InputDecoration textFieldDecor = InputDecoration(
    border: const OutlineInputBorder(),
    filled: true,
    fillColor: AppColors.white,
    prefixIcon: const GlobalIcon(icon: Icons.search),
    prefixIconColor: AppColors.primary,
    focusColor: AppColors.primary,
    hintText: AppTexts.search,
    hintStyle: AppTextStyles.inputHintTS,
    focusedBorder: AppBorders.oIBBR16,
    enabledBorder: AppBorders.oIBBR16,
  );
}

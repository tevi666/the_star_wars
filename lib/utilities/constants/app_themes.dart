import 'package:flutter/material.dart';
import 'package:the_star_wars/utilities/constants/app_icon_theme_data.dart';
import 'package:the_star_wars/utilities/constants/app_text_styles.dart';

import 'app_colors.dart';

class AppThemes {
  AppThemes._();

  static final ThemeData theme = ThemeData(
    // fontFamily: AppTexts.yatraOneReg,
    scaffoldBackgroundColor: AppColors.primary,
    appBarTheme:
        const AppBarTheme(backgroundColor: AppColors.primary, elevation: 0),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 10,
      selectedItemColor: AppColors.selectedIconAndLabel,
      selectedLabelStyle: AppTextStyles.bNbTd(20),
      unselectedLabelStyle: AppTextStyles.bNbTd(15),
      unselectedItemColor: AppColors.lightBlack,
      backgroundColor: AppColors.primary,
      selectedIconTheme:
          AppIconThemeData.iconTd(AppColors.selectedIconAndLabel, 30),
      unselectedIconTheme: AppIconThemeData.iconTd(AppColors.lightBlack, 20),
    ),
  );
}

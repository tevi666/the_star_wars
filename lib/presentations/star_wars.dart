import 'package:flutter/material.dart';
import '../utilities/constants/app_texts.dart';
import '../utilities/constants/app_themes.dart';
import '../utilities/helpers/pager.dart';

class StarWars extends StatelessWidget {
  const StarWars({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTexts.applicationTitle,
      theme: AppThemes.theme,
      home: Pager.starWarsPage
    );
  }
}

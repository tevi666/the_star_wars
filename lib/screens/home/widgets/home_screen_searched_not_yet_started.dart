import 'package:flutter/material.dart';

import '../../../presentations/widgets/global_text.dart';
import '../../../utilities/constants/app_paddings.dart';
import '../../../utilities/constants/app_text_styles.dart';
import '../../../utilities/constants/app_texts.dart';

class HomeScreenSearchedNotYetStarted extends StatelessWidget {
  const HomeScreenSearchedNotYetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.t20,
      child: GlobalText(
          text: AppTexts.searchedNotYet, style: AppTextStyles.homeScreenTS),
    );
  }
}

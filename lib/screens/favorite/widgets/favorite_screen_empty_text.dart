import 'package:flutter/material.dart';

import '../../../presentations/widgets/global_text.dart';
import '../../../utilities/constants/app_text_styles.dart';
import '../../../utilities/constants/app_texts.dart';

class FavoriteScreenEmptyText extends StatelessWidget {
  const FavoriteScreenEmptyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GlobalText(
          text: AppTexts.empty, style: AppTextStyles.favoritesScreenTS),
    );
  }
}

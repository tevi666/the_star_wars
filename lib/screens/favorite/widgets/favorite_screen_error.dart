import 'package:flutter/material.dart';

import '../../../presentations/widgets/global_text.dart';
import '../../../utilities/constants/app_texts.dart';

class FavoriteScreenError extends StatelessWidget {
  const FavoriteScreenError({super.key});

  @override
  Widget build(BuildContext context) {
    return const GlobalText(text: AppTexts.error);
  }
}

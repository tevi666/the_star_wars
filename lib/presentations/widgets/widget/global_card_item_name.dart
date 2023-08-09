import 'package:flutter/material.dart';

import '../../../utilities/constants/app_paddings.dart';
import '../../../utilities/constants/app_text_styles.dart';
import '../global_text.dart';

class GlobalCardItemName extends StatelessWidget {
  const GlobalCardItemName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.a8,
      child: GlobalText(
        text: name,
        style: AppTextStyles.globalCardTS(18, FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}

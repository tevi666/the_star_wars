import 'package:flutter/material.dart';

import '../../../utilities/constants/app_paddings.dart';
import '../../../utilities/constants/app_text_styles.dart';
import '../global_text.dart';

class GlobalCardItemDetail extends StatelessWidget {
  const GlobalCardItemDetail({super.key, required this.detail});
  final String detail;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h8v4,
      child: GlobalText(
        text: detail,
        style: AppTextStyles.globalCardTS(16, FontWeight.normal),
      ),
    );
  }
}

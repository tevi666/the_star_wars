import 'package:flutter/material.dart';

import 'global_text.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GlobalAppBar({
    super.key,
    required this.text,
    required this.style,
  });
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: GlobalText(
        text: text,
        style: style,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

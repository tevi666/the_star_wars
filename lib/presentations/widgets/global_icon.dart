import 'package:flutter/material.dart';

class GlobalIcon extends StatelessWidget {
  const GlobalIcon({
    super.key,
    this.icon,
  });
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Icon(icon);
  }
}

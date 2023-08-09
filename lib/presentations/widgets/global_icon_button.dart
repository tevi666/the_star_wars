import 'package:flutter/material.dart';

class GlobalIconButton extends StatelessWidget {
  const GlobalIconButton({super.key, required this.icon, this.onPressed});
  final Widget icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(icon: icon, onPressed: onPressed);
  }
}

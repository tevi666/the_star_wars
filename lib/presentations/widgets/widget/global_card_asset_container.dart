import 'package:flutter/material.dart';

class GlobalCardAssetContainer extends StatelessWidget {
  const GlobalCardAssetContainer({super.key, required this.assetName});
  final String assetName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetName),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

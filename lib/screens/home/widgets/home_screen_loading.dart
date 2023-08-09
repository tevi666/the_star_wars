import 'package:flutter/material.dart';

import '../../../presentations/widgets/global_loading.dart';
import '../../../utilities/constants/app_paddings.dart';

class HomeScreenLoading extends StatelessWidget {
  const HomeScreenLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: AppPaddings.t20, child: GlobalLoading());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/screen/screen_cubit.dart';
import '../../../utilities/constants/app_paddings.dart';
import '../../../utilities/constants/app_text_styles.dart';
import '../../../utilities/constants/app_texts.dart';
import '../../../utilities/helpers/pager.dart';
import '../../widgets/global_app_bar.dart';
import '../../widgets/global_icon.dart';

class StarWarsPage extends StatelessWidget {
  const StarWarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScreenCubit(),
      child: BlocBuilder<ScreenCubit, ScreenState>(
        builder: (context, state) {
          final screenCubit = context.read<ScreenCubit>();
          return Scaffold(
            appBar: GlobalAppBar(
              style: AppTextStyles.appBarTS,
              text: state is FavoriteScreenState
                  ? AppTexts.favorite
                  : AppTexts.applicationTitle,
            ),
            body: Padding(
              padding: AppPaddings.h20,
              child: state is HomeScreenState
                  ? Pager.homeScreen
                  : Pager.favoriteScreen
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: screenCubit.getCurrentIndex(state),
              onTap: (index) {
                screenCubit.onBottomNavTap(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: GlobalIcon(
                    icon: Icons.home,
                  ),
                  label: AppTexts.home,
                ),
                BottomNavigationBarItem(
                  icon: GlobalIcon(
                    icon: Icons.favorite,
                  ),
                  label: AppTexts.favorite,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

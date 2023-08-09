import 'package:flutter_bloc/flutter_bloc.dart';
part 'screen_state.dart';


class ScreenCubit extends Cubit<ScreenState> {
  ScreenCubit() : super(HomeScreenState());

  int getCurrentIndex(ScreenState state) {
    if (state is HomeScreenState) {
      return 0;
    } else if (state is FavoriteScreenState) {
      return 1;
    }
    return 0;
  }

  void onBottomNavTap(int index) {
    if (index == 0) {
      emit(HomeScreenState());
    } else if (index == 1) {
      emit(FavoriteScreenState());
    }
  }
}


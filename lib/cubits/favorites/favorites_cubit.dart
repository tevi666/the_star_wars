import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_star_wars/data/manager/favorite_manager.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit() : super(FavoritesInitial());

  Future<void> loadFavorites() async {
    final favorites = await FavoritesManager.getFavorites();
    emit(FavoritesLoaded(favorites));
  }

  Future<void> addToFavorites(String item) async {
    await FavoritesManager.addToFavorites(item);
    final updatedFavorites = await FavoritesManager.getFavorites();
    emit(FavoritesLoaded(updatedFavorites));
  }

  Future<void> removeFromFavorites(String item) async {
    await FavoritesManager.removeFromFavorites(item);
    final updatedFavorites = await FavoritesManager.getFavorites();
    emit(FavoritesLoaded(updatedFavorites));
  }
}

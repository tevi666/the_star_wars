part of 'favorites_cubit.dart';

abstract class FavoritesState {
  const FavoritesState();
}
class FavoritesInitial extends FavoritesState {}

class FavoritesLoaded extends FavoritesState {
  final List<String> favorites;
  FavoritesLoaded(this.favorites);
}

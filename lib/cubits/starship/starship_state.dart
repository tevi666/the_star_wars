import '../../data/models/starship_model.dart';

class StarshipState {}

class StarshipInitial extends StarshipState {}

class StarshipLoaded extends StarshipState {
  final List<StarshipModel> starship;

  StarshipLoaded(this.starship);
}

class StarshipError extends StarshipState {}

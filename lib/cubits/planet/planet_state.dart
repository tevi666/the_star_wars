import '../../data/models/planet_model.dart';

class PlanetState {}

class PlanetInitial extends PlanetState {}

class PlanetLoaded extends PlanetState {
  final List<PlanetModel> planets;

  PlanetLoaded(this.planets);
}

class PlanetError extends PlanetState {}

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/planet_repository.dart';
import 'planet_state.dart';

class PlanetCubit extends Cubit<PlanetState> {
  final PlanetRepository planetRepository;

  PlanetCubit(this.planetRepository) : super(PlanetInitial());

  Future<void> searchPlanetByName(String name) async {
    try {
      emit(PlanetInitial());
      final planets = await planetRepository.showPlanet(name);
      emit(PlanetLoaded(planets));
    } catch (e) {
      emit(PlanetError());
    }
  }
}

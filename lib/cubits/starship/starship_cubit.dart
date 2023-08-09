import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/starship_repository.dart';
import 'starship_state.dart';

class StarshipCubit extends Cubit<StarshipState> {
  final StarshipRepository starshipRepository; 

  StarshipCubit(this.starshipRepository) : super(StarshipInitial());

  Future<void> searchStarshipByName(String name) async {
    try {
      emit(StarshipInitial());
      final starships = await starshipRepository.showStarship(name);
      emit(StarshipLoaded(starships));
    } catch (e) {
      emit(StarshipError());
    }
  }
}

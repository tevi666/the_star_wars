import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_star_wars/data/models/people_model.dart';
import 'package:the_star_wars/data/models/starship_model.dart';
import 'package:the_star_wars/data/models/planet_model.dart';
import 'package:the_star_wars/data/repositories/people_repository.dart';
import 'package:the_star_wars/data/repositories/starship_repository.dart';
import 'package:the_star_wars/data/repositories/planet_repository.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final PeopleRepository peopleRepository;
  final StarshipRepository starshipRepository;
  final PlanetRepository planetRepository;

  SearchCubit({
    required this.peopleRepository,
    required this.starshipRepository,
    required this.planetRepository, SharedPreferences? prefs,
  }) : super(SearchInitial());

  Future<void> performSearch(String query) async {
    if (query.length < 2) {
      emit(SearchInitial());
      return;
    }

    emit(SearchLoading());

    try {
      final List<PeopleModel> peopleResults =
          await peopleRepository.showPeople(query);
      final List<StarshipModel> starshipResults =
          await starshipRepository.showStarship(query);
      final List<PlanetModel> planetResults =
          await planetRepository.showPlanet(query);

      emit(SearchLoaded(
        peopleResults: peopleResults,
        starshipResults: starshipResults,
        planetResults: planetResults,
      ));
    } catch (e) {
      emit(SearchError());
    }
  }

}

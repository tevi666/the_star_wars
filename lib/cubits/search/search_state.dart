part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchLoaded extends SearchState {
  final List<PeopleModel> peopleResults;
  final List<StarshipModel> starshipResults;
  final List<PlanetModel> planetResults;

  const SearchLoaded({
    required this.peopleResults,
    required this.starshipResults,
    required this.planetResults,
  });

  @override
  List<Object> get props => [peopleResults, starshipResults, planetResults];
}

class SearchError extends SearchState {}

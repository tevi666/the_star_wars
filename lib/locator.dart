import 'package:get_it/get_it.dart';
import 'package:the_star_wars/data/data_sources/planet_data_source.dart';
import 'package:the_star_wars/data/data_sources/starship_data_source.dart';

import 'data/data_sources/people_data_source.dart';

final GetIt locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton(() => PlanetDataSource());
  locator.registerLazySingleton(() => StarshipDataSource());
  locator.registerLazySingleton(() => PeopleDataSource());
}

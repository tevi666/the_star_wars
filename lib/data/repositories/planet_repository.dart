import 'package:the_star_wars/data/models/planet_model.dart';

import '../data_sources/planet_data_source.dart';

class PlanetRepository {
  final PlanetDataSource planetDataSource;

  PlanetRepository(this.planetDataSource);

  Future<List<PlanetModel>> showPlanet(String name) async {
    return planetDataSource.searchPlanetByName(name);
  }
}

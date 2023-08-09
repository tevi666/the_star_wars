import 'package:the_star_wars/data/models/starship_model.dart';

import '../data_sources/starship_data_source.dart';

class StarshipRepository {
  final StarshipDataSource starshipDataSource;

  StarshipRepository(this.starshipDataSource);

  Future<List<StarshipModel>> showStarship(String name) async {
    return starshipDataSource.searchStarshipByName(name);
  }
}

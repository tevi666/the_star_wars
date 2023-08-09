import 'package:flutter/material.dart';
import 'package:the_star_wars/utilities/constants/app_texts.dart';

import '../../../data/models/favorite_model.dart';
import '../../../data/models/people_model.dart';
import '../../../data/models/planet_model.dart';
import '../../../data/models/starship_model.dart';
import '../../../presentations/widgets/global_card.dart';
import '../../../utilities/constants/app_assets.dart';

class SearchResults extends StatelessWidget {
  final List<PeopleModel> peopleResults;
  final List<StarshipModel> starshipResults;
  final List<PlanetModel> planetResults;

  const SearchResults({
    super.key,
    required this.peopleResults,
    required this.starshipResults,
    required this.planetResults,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 656,
      child: ListView.builder(
        itemCount: peopleResults.length +
            starshipResults.length +
            planetResults.length,
        itemBuilder: (context, index) {
          if (index < peopleResults.length) {
            final people = peopleResults[index];
            return GlobalCard(
              assetName: AppAssets.people,
              name: people.name ?? AppTexts.emptyStr,
              detail1: '${AppTexts.gender}${people.gender}',
              detail2: '${AppTexts.starships}${people.starships?.length ?? 0}',
              filmUrls: people.films ?? [],
              onPressed: () {},
              favoriteModel: FavoriteModel(
                  assetName: AppAssets.people,
                  filmUrls: people.films ?? [],
                  id: people.url!,
                  name: people.name!),
            );
          } else if (index < peopleResults.length + starshipResults.length) {
            final starship = starshipResults[index - peopleResults.length];
            return GlobalCard(
              assetName: AppAssets.starship,
              name: starship.name ?? AppTexts.emptyStr,
              detail1: '${AppTexts.model}${starship.model}',
              detail2: '${AppTexts.manufacturer}${starship.manufacturer}',
              detail3: '${AppTexts.passengers}${starship.passengers}',
              filmUrls: starship.films ?? [],
              onPressed: () {},
              favoriteModel: FavoriteModel(
                  assetName: AppAssets.starship,
                  filmUrls: starship.films ?? [],
                  id: starship.url!,
                  name: starship.name!,
                  detail1: '${AppTexts.model}${starship.model}',
                  detail2: '${AppTexts.manufacturer}${starship.manufacturer}',
                  detail3: '${AppTexts.passengers}${starship.passengers}'),
            );
          } else {
            final planet = planetResults[
                index - peopleResults.length - starshipResults.length];
            return GlobalCard(
              assetName: AppAssets.planet,
              name: planet.name ?? AppTexts.emptyStr,
              detail1: planet.diameter,
              detail2: planet.population,
              filmUrls: planet.films ?? [],
              onPressed: () {},
              favoriteModel: FavoriteModel(
                  assetName: AppAssets.planet,
                  filmUrls: planet.films ?? [],
                  id: planet.url!,
                  name: planet.name!,
                  detail1: planet.diameter,
                  detail2: planet.population),
            );
          }
        },
      ),
    );
  }
}

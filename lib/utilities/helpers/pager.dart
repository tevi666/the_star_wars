import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_star_wars/presentations/star_wars.dart';

import '../../cubits/favorites/favorites_cubit.dart';
import '../../cubits/search/search_cubit.dart';
import '../../data/data_sources/people_data_source.dart';
import '../../data/data_sources/planet_data_source.dart';
import '../../data/data_sources/starship_data_source.dart';
import '../../data/repositories/people_repository.dart';
import '../../data/repositories/planet_repository.dart';
import '../../data/repositories/starship_repository.dart';
import '../../presentations/pages/star_wars/star_wars_page.dart';
import '../../presentations/widgets/global_loading.dart';
import '../../presentations/widgets/global_sized_box.dart';
import '../../screens/favorite/favorite_screen.dart';
import '../../screens/favorite/widgets/favorite_item.dart';
import '../../screens/favorite/widgets/favorite_screen_empty_text.dart';
import '../../screens/favorite/widgets/favorite_screen_error.dart';
import '../../screens/home/home_screen.dart';

class Pager {
  Pager._();

  static Widget get starWarsPage => BlocProvider(
        create: (context) => SearchCubit(
            peopleRepository: PeopleRepository(PeopleDataSource()),
            planetRepository: PlanetRepository(PlanetDataSource()),
            starshipRepository: StarshipRepository(StarshipDataSource())),
        child: const StarWarsPage(),
      );
  static Widget get starWars => const StarWars();
  static Widget get favoriteScreenEmptyText => const FavoriteScreenEmptyText();
  static Widget get loading => const GlobalLoading();
  static Widget get favoriteError => const FavoriteScreenError();
  static Widget get homeScreen => const HomeScreen();
  static Widget get favoriteScreen => BlocProvider(
        create: (context) => FavoritesCubit(),
        child: const FavoriteScreen(),
      );
  static Widget favoriteItems(String favoriteItems) =>
      FavoriteItem(favoriteItems: favoriteItems);
  static Widget get sizedBox => const GlobalSizedBox();
}

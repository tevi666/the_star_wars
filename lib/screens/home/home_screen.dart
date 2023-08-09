import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/favorites/favorites_cubit.dart';
import '../../cubits/people/people_cubit.dart';
import '../../cubits/planet/planet_cubit.dart';
import '../../cubits/starship/starship_cubit.dart';
import '../../data/data_sources/people_data_source.dart';
import '../../data/data_sources/planet_data_source.dart';
import '../../data/data_sources/starship_data_source.dart';
import '../../data/repositories/people_repository.dart';
import '../../data/repositories/planet_repository.dart';
import '../../data/repositories/starship_repository.dart';
import 'widgets/home_screen_child.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              PlanetCubit(PlanetRepository(PlanetDataSource())),
        ),
        BlocProvider(
          create: (context) =>
              StarshipCubit(StarshipRepository(StarshipDataSource())),
        ),
        BlocProvider(
          create: (context) =>
              PeopleCubit(PeopleRepository(PeopleDataSource())),
        ),
        BlocProvider(create: (context) => FavoritesCubit()),
      ],
      child: HomeScreenChild()
    );
  }
}

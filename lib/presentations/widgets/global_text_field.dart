import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/people/people_cubit.dart';
import '../../cubits/planet/planet_cubit.dart';
import '../../cubits/search/search_cubit.dart';
import '../../cubits/starship/starship_cubit.dart';

class GlobalTextField extends StatelessWidget {
  final TextEditingController? controller;
  const GlobalTextField({
    super.key,
    required this.decoration,
    this.controller,
  });
  final InputDecoration decoration;
  @override
  Widget build(BuildContext context) {
    final PlanetCubit cubitP = context.read<PlanetCubit>();
    final StarshipCubit cubitS = context.read<StarshipCubit>();
    final PeopleCubit cubitPeople = context.read<PeopleCubit>();
    return TextField(
        controller: controller,
        onChanged: (value) {
          if (value.length >= 2) {
            cubitP.searchPlanetByName(value);
            cubitS.searchStarshipByName(value);
            cubitPeople.searchPeopleByName(value);
            context.read<SearchCubit>().performSearch(value);
          }
        },
        decoration: decoration);
  }
}

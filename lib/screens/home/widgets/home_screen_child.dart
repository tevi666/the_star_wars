import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:the_star_wars/screens/home/widgets/search_results.dart';

import '../../../cubits/search/search_cubit.dart';
import '../../../presentations/widgets/global_text_field.dart';
import '../../../utilities/constants/app_input_decoration.dart';
import 'home_screen_loading.dart';
import 'home_screen_nothing_found.dart';
import 'home_screen_searched_not_yet_started.dart';

class HomeScreenChild extends StatelessWidget {
  HomeScreenChild({
    Key? key,
  }) : super(key: key);
    final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GlobalTextField(
            controller: _searchController,
            decoration: AppInputDecoration.textFieldDecor,
          ),
          BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              if (state is SearchLoaded) {
                if (state.peopleResults.isEmpty &&
                    state.starshipResults.isEmpty &&
                    state.planetResults.isEmpty) {
                  return const HomeScreenNothingFound();
                } else {
                  return SearchResults(
                      peopleResults: state.peopleResults,
                      starshipResults: state.starshipResults,
                      planetResults: state.planetResults);
                }
              } else if (state is SearchInitial) {
                return const HomeScreenSearchedNotYetStarted();
              } else {
                return const HomeScreenLoading();
              }
            },
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/favorites/favorites_cubit.dart';
import '../../utilities/helpers/pager.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoritesCubit()..loadFavorites(),
      child: BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) {
          if (state is FavoritesLoaded) {
            final favoriteItems = state.favorites;
            if (favoriteItems.isEmpty) {
              return Pager.favoriteScreenEmptyText;
            }
            return ListView.builder(
              itemCount: favoriteItems.length,
              itemBuilder: (context, index) {
                final item = favoriteItems[index];
                return Pager.favoriteItems(
                    item); 
              },
            );
          } else if (state is FavoritesInitial) {
            return Pager.loading;
          } else {
            return Pager.favoriteError;
          }
        },
      ),
    );
  }
}

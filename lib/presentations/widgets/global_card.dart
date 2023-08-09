import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/favorites/favorites_cubit.dart';
import '../../data/models/favorite_model.dart';
import 'widget/global_card_item.dart';

class GlobalCard extends StatelessWidget {
  final String assetName;
  final String name;
  final String? detail1;
  final String? detail2;
  final String? detail3;
  final List<String> filmUrls;
  final Function() onPressed;
  final FavoriteModel favoriteModel;

  const GlobalCard({
    Key? key,
    required this.assetName,
    required this.name,
    this.detail1,
    this.detail2,
    this.detail3,
    required this.filmUrls,
    required this.onPressed, 
    required this.favoriteModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        return GlobalCardItem(
          assetName: assetName,
          favoriteModel: favoriteModel,
          filmUrls: filmUrls,
          name: name,
          detail1: detail1,
          detail2: detail2,
          detail3: detail3,
        );
      },
    );
  }
}

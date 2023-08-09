import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_star_wars/utilities/constants/app_colors.dart';
import 'package:the_star_wars/utilities/constants/app_paddings.dart';
import 'package:the_star_wars/utilities/constants/app_texts.dart';

import '../../cubits/favorites/favorites_cubit.dart';
import 'global_text.dart';

class GlobalElevatedButton extends StatefulWidget {
  const GlobalElevatedButton({super.key, required this.favoriteItem});
  final String favoriteItem;

  @override
  State<GlobalElevatedButton> createState() => _GlobalElevatedButtonState();
}

class _GlobalElevatedButtonState extends State<GlobalElevatedButton> {
  late bool _isFavorite = false;

  @override
  void initState() {
    super.initState();
    _loadFavoriteState();
  }

  Future<void> _loadFavoriteState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isFavorite = prefs.getBool(widget.favoriteItem) ?? false;
    });
  }

  Future<void> _saveFavoriteState(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(widget.favoriteItem, value);
  }

  void addOrRemoveItem() {
    _isFavorite = !_isFavorite;
    _saveFavoriteState(_isFavorite);
    final favoritesCubit = context.read<FavoritesCubit>();
    if (_isFavorite) {
      favoritesCubit.addToFavorites(widget.favoriteItem);
    } else {
      favoritesCubit.removeFromFavorites(widget.favoriteItem);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.a8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: _isFavorite ? AppColors.red : AppColors.green,
        ),
        onPressed: addOrRemoveItem,
        child: GlobalText(
          text: _isFavorite ? AppTexts.remove : AppTexts.add,
        ),
      ),
    );
  }
}

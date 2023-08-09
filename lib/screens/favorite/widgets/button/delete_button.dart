import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../cubits/favorites/favorites_cubit.dart';
import '../../../../presentations/widgets/global_icon.dart';
import '../../../../presentations/widgets/global_icon_button.dart';
import '../../../../utilities/constants/app_paddings.dart';

class DeleteButton extends StatefulWidget {
  const DeleteButton({super.key, required this.favoriteItem});
  final String favoriteItem;

  @override
  State<DeleteButton> createState() => _DeleteButtonState();
}

class _DeleteButtonState extends State<DeleteButton> {
  late bool _isFavorite = true;

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

  void removeItem() {
    _isFavorite = !_isFavorite;
    _saveFavoriteState(_isFavorite);
    final favoritesCubit = context.read<FavoritesCubit>();
    favoritesCubit.removeFromFavorites(widget.favoriteItem);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.a8,
      child: GlobalIconButton(
          onPressed: removeItem, icon: const GlobalIcon(icon: Icons.delete)),
    );
  }
}
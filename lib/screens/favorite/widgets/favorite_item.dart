import 'package:flutter/material.dart';

import '../../../presentations/widgets/global_text.dart';
import 'button/delete_button.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({
    Key? key,
    required this.favoriteItems,
  }) : super(key: key);
  final String favoriteItems;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: GlobalText(text: favoriteItems),
        trailing: DeleteButton(favoriteItem: favoriteItems),
      ),
    );
  }
}

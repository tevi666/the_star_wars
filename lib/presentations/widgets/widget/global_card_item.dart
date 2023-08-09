import 'package:flutter/material.dart';
import 'package:the_star_wars/data/models/favorite_model.dart';
import 'package:the_star_wars/utilities/constants/app_texts.dart';
import 'package:the_star_wars/utilities/helpers/pager.dart';

import '../../../data/data_sources/films_data_source.dart';
import '../../../utilities/constants/app_paddings.dart';
import '../../../utilities/constants/app_text_styles.dart';
import '../global_elevated_button.dart';
import '../global_text.dart';
import 'global_card_asset_container.dart';
import 'global_card_item_detail.dart';
import 'global_card_item_name.dart';

class GlobalCardItem extends StatelessWidget {
  const GlobalCardItem(
      {super.key,
      required this.assetName,
      required this.name,
      this.detail1,
      this.detail2,
      this.detail3,
      required this.filmUrls,
      required this.favoriteModel});
  final String assetName;
  final String name;
  final String? detail1;
  final String? detail2;
  final String? detail3;
  final List<String> filmUrls;
  final FavoriteModel favoriteModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: AppPaddings.a8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GlobalCardAssetContainer(assetName: assetName),
          GlobalCardItemName(name: name),
          if (detail1 != null) GlobalCardItemDetail(detail: detail1!),
          if (detail2 != null) GlobalCardItemDetail(detail: detail2!),
          if (detail3 != null) GlobalCardItemDetail(detail: detail3!),
          if (filmUrls.isNotEmpty)
            Padding(
              padding: AppPaddings.h8v4,
              child: FutureBuilder<List<String>>(
                future: _getFilmTitles(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Pager.sizedBox;
                  } else if (snapshot.hasError) {
                    return GlobalText(
                        text: '${AppTexts.errorSpace}${snapshot.error}',
                        style: AppTextStyles.globalCardTS(16, FontWeight.w400));
                  } else {
                    final filmTitles = snapshot.data;
                    if (filmTitles != null && filmTitles.isNotEmpty) {
                      return GlobalText(
                        text: AppTexts.films + filmTitles.join(AppTexts.join),
                        style:
                            AppTextStyles.globalCardTS(16, FontWeight.normal),
                      );
                    } else {
                      return Pager.sizedBox;
                    }
                  }
                },
              ),
            ),
          GlobalElevatedButton(favoriteItem: favoriteModel.name)
        ],
      ),
    );
  }

  Future<List<String>> _getFilmTitles() async {
    final List<String> titles = [];
    for (final url in filmUrls) {
      final film = await FilmsDataSource().getFilmByUrl(url);
      titles.add(film.title!);
    }
    return titles;
  }
}

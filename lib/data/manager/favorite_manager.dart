import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_star_wars/utilities/constants/endpoints.dart';

class FavoritesManager {
  static Future<void> addToFavorites(String item) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favorites = prefs.getStringList(Endpoints.keyFavorites) ?? [];
    if (!favorites.contains(item)) {
      favorites.add(item);
      await prefs.setStringList(Endpoints.keyFavorites, favorites);
    }
  }

  static Future<List<String>> getFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(Endpoints.keyFavorites) ?? [];
  }

  static Future<void> removeFromFavorites(String item) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favorites = prefs.getStringList(Endpoints.keyFavorites) ?? [];

    if (favorites.contains(item)) {
      favorites.remove(item);
      await prefs.setStringList(Endpoints.keyFavorites, favorites);
    }
  }
}

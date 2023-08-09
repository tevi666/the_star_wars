import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:the_star_wars/utilities/constants/endpoints.dart';
import '../models/films_model.dart'; 

class FilmsDataSource {
  static const String api = Endpoints.urlF;
  Future<FilmsModel> getFilmByUrl(String url) async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return FilmsModel.fromMap(
          data); 
    } else {
      throw Exception('Failed to fetch film data');
    }
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:the_star_wars/utilities/constants/endpoints.dart';

import '../models/starship_model.dart';

class StarshipDataSource {
  Future<List<StarshipModel>> searchStarshipByName(String name) async {
    try {
      String api = "${Endpoints.urlS}?search=$name";
      Uri uri = Uri.parse(api);

      http.Response response = await http.get(uri);

      if (response.statusCode == HttpStatus.ok) {
        final List<dynamic> starshipDataList =
            jsonDecode(response.body)['results'];

        List<StarshipModel> starships = starshipDataList
            .map((starshipData) => StarshipModel.fromMap(starshipData))
            .toList();
        return starships;
      } else {
        throw Exception('Failed to search for planets');
      }
    } catch (error) {
      throw Exception('Failed to search for planets: $error');
    }
  }
}

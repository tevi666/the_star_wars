import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:the_star_wars/data/models/planet_model.dart';
import 'package:the_star_wars/utilities/constants/endpoints.dart';

class PlanetDataSource {
  Future<List<PlanetModel>> searchPlanetByName(String name) async {
    try {
      String api = "${Endpoints.urlP}?search=$name";
      Uri uri = Uri.parse(api);
      http.Response response = await http.get(uri);
      if (response.statusCode == HttpStatus.ok) {
        final List<dynamic> planetDataList =
            jsonDecode(response.body)['results'];
        List<PlanetModel> planets = planetDataList
            .map((planetData) => PlanetModel.fromMap(planetData))
            .toList();
        return planets;
      } else {
        throw Exception('Failed to search for planets');
      }
    } catch (error) {
      throw Exception('Failed to search for planets: $error');
    }
  }
}

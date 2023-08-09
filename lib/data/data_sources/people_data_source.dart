import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:the_star_wars/data/models/people_model.dart';
import 'package:the_star_wars/utilities/constants/endpoints.dart';

class PeopleDataSource {
  Future<List<PeopleModel>> searchPeopleByName(String name) async {
    try {
      String api = "${Endpoints.urlPeople}?search=$name";
      Uri uri = Uri.parse(api);
      http.Response response = await http.get(uri);
      if (response.statusCode == HttpStatus.ok) {
        final dynamic responseData = jsonDecode(response.body);
        final List<dynamic> peopleDataList = responseData['results'];
        List<PeopleModel> peoples = peopleDataList
            .map((peopleData) => PeopleModel.fromMap(peopleData))
            .toList();
        return peoples;
      } else {
        throw Exception('Failed to search for people');
      }
    } catch (error) {
      throw Exception('Failed to search for people: $error');
    }
  }

}

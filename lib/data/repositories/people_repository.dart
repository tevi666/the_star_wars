import 'package:the_star_wars/data/models/people_model.dart';
import '../data_sources/people_data_source.dart';

class PeopleRepository {
  final PeopleDataSource peopleDataSource;

  PeopleRepository(this.peopleDataSource);

  Future<List<PeopleModel>> showPeople(String name) async {
    return peopleDataSource.searchPeopleByName(name);
  }
}

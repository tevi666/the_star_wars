import '../../data/models/people_model.dart';

class PeopleState {}

class PeopleInitial extends PeopleState {}

class PeopleLoaded extends PeopleState {
  final List<PeopleModel> people;

  PeopleLoaded(this.people);
}

class PeopleError extends PeopleState {}

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/people_repository.dart';
import 'people_state.dart';

class PeopleCubit extends Cubit<PeopleState> {
  final PeopleRepository peopleRepository;

  PeopleCubit(this.peopleRepository) : super(PeopleInitial());

  Future<void> searchPeopleByName(String name) async {
    try {
      emit(PeopleInitial());
      final people = await peopleRepository.showPeople(name);
      emit(PeopleLoaded(people));
    } catch (e) {
      emit(PeopleError());
    }
  }
}

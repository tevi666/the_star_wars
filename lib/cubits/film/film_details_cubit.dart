import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/data_sources/films_data_source.dart';
import '../../data/models/films_model.dart';

class FilmDetailsCubit extends Cubit<Map<String, List<FilmsModel>>> {
  final FilmsDataSource filmsDataSource = FilmsDataSource();

  FilmDetailsCubit() : super({});

  Future<void> loadFilmDetails(List<String>? filmUrls, String name) async {
    if (filmUrls == null) {
      emit(state);
      return;
    }

    final List<FilmsModel> filmDetails = await _loadFilmDetails(filmUrls);
    final updatedMap = Map<String, List<FilmsModel>>.from(state);
    updatedMap[name] = filmDetails;

    emit(updatedMap);
  }

  Future<List<FilmsModel>> _loadFilmDetails(List<String>? filmUrls) async {
    final List<Future<FilmsModel>> filmFutures = [];
    for (final url in filmUrls!) {
      filmFutures.add(filmsDataSource.getFilmByUrl(url));
    }

    return Future.wait(filmFutures);
  }
}

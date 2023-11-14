import 'package:briix_assignment/application/core/locator.dart';
import 'package:briix_assignment/domain/entities/genre.dart';
import 'package:briix_assignment/domain/entities/movie_entity.dart';
import 'package:briix_assignment/domain/repositories/movie_repo.dart';
import 'package:briix_assignment/domain/use_cases/create_movie.dart';
import 'package:briix_assignment/domain/use_cases/delete_movie.dart';
import 'package:briix_assignment/domain/use_cases/read_movie_detail.dart';
import 'package:briix_assignment/domain/use_cases/update_movie.dart';
import 'package:mobx/mobx.dart';

part 'movie_store.g.dart';

// ignore: library_private_types_in_public_api
class MovieStore = _MovieStore with _$MovieStore;

abstract class _MovieStore with Store {
  @observable
  bool isCreateSuccess = false;

  @observable
  String errorMessage = '';

  @observable
  bool isLoading = false;

  @observable
  MovieEntity params = const MovieEntity(
    id: '',
    title: '',
    director: '',
    summary: '',
    genre: [],
  );

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  void onChangeTitle(String title) {
    params = params.copyWith(title: title);
  }

  @action
  void onChangeDirector(String director) {
    params = params.copyWith(director: director);
  }

  @action
  void onChangeSummary(String summary) {
    params = params.copyWith(summary: summary);
  }

  @action
  void onChangeGenre(Genre genre) {
    List<Genre> genreX = List.from(params.genre);
    if (genreX.where((element) => element == genre).isNotEmpty) {
      genreX.remove(genreX.firstWhere((element) => element == genre));
      params = params.copyWith(genre: genreX);
    } else {
      genreX.add(genre);
      params = params.copyWith(genre: genreX);
    }
  }

  @action
  Future<void> onCreateMovie() async {
    isLoading = true;
    final id = DateTime.now();
    try {
      final result = await CreateMovie(movieRepo: getIt<MovieRepo>())
          .createMovie(movieParam: params.copyWith(id: id.toString()));

      if (result.isRight) {
        isCreateSuccess = true;
      } else {
        errorMessage = result.left.toString();
      }
      isLoading = false;
    } catch (e) {
      isCreateSuccess = false;
      errorMessage = e.toString();
      isLoading = false;
    }
  }

  @action
  Future<void> onUpdateMovie() async {
    isLoading = true;
    try {
      final result = await UpdateMovie(movieRepo: getIt<MovieRepo>())
          .updateMovie(movieParam: params);

      if (result.isRight) {
        isCreateSuccess = true;
      } else {
        errorMessage = result.left.toString();
      }
      isLoading = false;
    } catch (e) {
      isCreateSuccess = false;
      errorMessage = e.toString();
      isLoading = false;
    }
  }

  @action
  Future<void> onReadMovieDetail(String id) async {
    isLoading = true;
    try {
      final result = await ReadMovieDetail(movieRepo: getIt<MovieRepo>())
          .readMovieDetail(id: id);

      if (result.isRight) {
        params = result.right;
      } else {
        errorMessage = result.left.toString();
      }

      isLoading = false;
    } catch (e) {
      errorMessage = e.toString();
      isLoading = false;
    }
  }

  @action
  Future<void> onDeleteMovie(String id) async {
    isLoading = true;
    try {
      final result =
          await DeleteMovie(movieRepo: getIt<MovieRepo>()).deleteMovie(id: id);

      if (result.isRight) {
      } else {
        errorMessage = result.left.toString();
      }

      isLoading = false;
    } catch (e) {
      errorMessage = e.toString();
      isLoading = false;
    }
  }
}

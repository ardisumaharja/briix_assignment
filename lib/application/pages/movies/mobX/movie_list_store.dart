import 'package:briix_assignment/application/core/locator.dart';
import 'package:briix_assignment/domain/entities/movie_entity.dart';
import 'package:briix_assignment/domain/repositories/movie_repo.dart';
import 'package:briix_assignment/domain/use_cases/read_movie_list.dart';
import 'package:mobx/mobx.dart';

part 'movie_list_store.g.dart';

// ignore: library_private_types_in_public_api
class MovieListStore = _MovieListStore with _$MovieListStore;

abstract class _MovieListStore with Store {
  @observable
  bool isLoading = false;

  @observable
  String errorMessage = '';

  @observable
  List<MovieEntity> movieList = [];

  @observable
  List<MovieEntity> movieListBase = [];

  @action
  Future<void> onReadMovieList() async {
    isLoading = true;
    try {
      final result = await ReadMovieList(movieRepo: getIt<MovieRepo>())
          .readMovieList(searchText: '');

      if (result.isRight) {
        movieList = result.right;
        movieListBase = result.right;
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
  void onSearching(String text) {
    final temp = movieListBase
        .where((element) =>
            element.title.toLowerCase().contains(text.toLowerCase()))
        .toList();
    if (temp.isEmpty) {
      movieList = [];
    } else {
      movieList = temp;
    }
  }
}

import 'package:briix_assignment/data/models/movie_model.dart';

abstract class MovieLocalDataSourceInterface {
  Future<List<MovieModel>> readListMovie({required String searchText});
  Future<MovieModel> readDetailMovie({required String id});
  Future<bool> createMovie({required MovieModel paramMovie});
  Future<bool> updateMovie({required MovieModel paramMovie});
  Future<bool> deleteMovie({required String id});
}

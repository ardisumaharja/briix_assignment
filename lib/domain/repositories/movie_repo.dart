import 'package:briix_assignment/domain/entities/movie_entity.dart';
import 'package:briix_assignment/domain/failures/failures.dart';
import 'package:either_dart/either.dart';

abstract class MovieRepo {
  Future<Either<Failure, List<MovieEntity>>> readMovieListFromDataSource(
      {required String searchText});
  Future<Either<Failure, MovieEntity>> readMovieDetailFromDataSource(
      {required String id});
  Future<Either<Failure, bool>> createMovieToDataSource(
      {required MovieEntity movieParam});
  Future<Either<Failure, bool>> updateMovieToDataSource(
      {required MovieEntity movieParam});
  Future<Either<Failure, bool>> deleteMovieToDataSource({required String id});
}

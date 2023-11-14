import 'package:briix_assignment/data/exceptions%20copy/base_exception.dart';
import 'package:briix_assignment/data/mappers/movie_mapper.dart';
import 'package:either_dart/either.dart';
import 'package:briix_assignment/data/data_sources/interface/movie_local_data_source_interface.dart';
import 'package:briix_assignment/domain/entities/movie_entity.dart';
import 'package:briix_assignment/domain/failures/failures.dart';
import 'package:briix_assignment/domain/repositories/movie_repo.dart';

class MovieRepoLocal with MovieMapper implements MovieRepo {
  final MovieLocalDataSourceInterface localDataSource;

  MovieRepoLocal({
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, bool>> createMovieToDataSource(
      {required MovieEntity movieParam}) async {
    try {
      final result = await localDataSource.createMovie(
          paramMovie: movieEntityToModel(movieParam));
      return Right(result);
    } on ErrorException catch (e) {
      return Left(CacheFailure(stackTrace: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> readMovieListFromDataSource(
      {required String searchText}) async {
    try {
      final result =
          await localDataSource.readListMovie(searchText: searchText);

      return Right(result.map((e) => movieModelToEntity(e)).toList());
    } on ErrorException catch (e) {
      return Left(CacheFailure(stackTrace: e.toString()));
    } catch (e) {
      return Left(CacheFailure(stackTrace: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> updateMovieToDataSource(
      {required MovieEntity movieParam}) async {
    try {
      final result = await localDataSource.updateMovie(
          paramMovie: movieEntityToModel(movieParam));
      return Right(result);
    } on ErrorException catch (e) {
      return Left(CacheFailure(stackTrace: e.toString()));
    } catch (e) {
      return Left(CacheFailure(stackTrace: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteMovieToDataSource(
      {required String id}) async {
    try {
      final result = await localDataSource.deleteMovie(id: id);
      return Right(result);
    } on ErrorException catch (e) {
      return Left(CacheFailure(stackTrace: e.toString()));
    }
  }

  @override
  Future<Either<Failure, MovieEntity>> readMovieDetailFromDataSource(
      {required String id}) async {
    try {
      final result = await localDataSource.readDetailMovie(id: id);
      return Right(movieModelToEntity(result));
    } on ErrorException catch (e) {
      return Left(CacheFailure(stackTrace: e.toString()));
    }
  }
}

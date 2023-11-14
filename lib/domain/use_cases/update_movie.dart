// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:briix_assignment/domain/entities/movie_entity.dart';
import 'package:briix_assignment/domain/failures/failures.dart';
import 'package:briix_assignment/domain/repositories/movie_repo.dart';
import 'package:either_dart/either.dart';

class UpdateMovie {
  final MovieRepo movieRepo;

  UpdateMovie({
    required this.movieRepo,
  });

  Future<Either<Failure, bool>> updateMovie(
      {required MovieEntity movieParam}) async {
    try {
      final result = movieRepo.updateMovieToDataSource(movieParam: movieParam);
      return result.fold((left) => Left(left), (right) => Right(right));
    } on Exception catch (e) {
      return Left(CacheFailure(stackTrace: e.toString()));
    }
  }
}

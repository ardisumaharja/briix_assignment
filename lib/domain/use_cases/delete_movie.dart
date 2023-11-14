import 'package:briix_assignment/domain/failures/failures.dart';
import 'package:briix_assignment/domain/repositories/movie_repo.dart';
import 'package:either_dart/either.dart';

class DeleteMovie {
  final MovieRepo movieRepo;

  DeleteMovie({
    required this.movieRepo,
  });

  Future<Either<Failure, bool>> deleteMovie({required String id}) async {
    try {
      final result = movieRepo.deleteMovieToDataSource(id: id);
      return result.fold((left) => Left(left), (right) => Right(right));
    } on Exception catch (e) {
      return Left(CacheFailure(stackTrace: e.toString()));
    }
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:briix_assignment/domain/entities/movie_entity.dart';
import 'package:briix_assignment/domain/failures/failures.dart';
import 'package:briix_assignment/domain/repositories/movie_repo.dart';
import 'package:either_dart/either.dart';

class ReadMovieDetail {
  final MovieRepo movieRepo;

  ReadMovieDetail({
    required this.movieRepo,
  });

  Future<Either<Failure, MovieEntity>> readMovieDetail(
      {required String id}) async {
    try {
      final result = movieRepo.readMovieDetailFromDataSource(id: id);
      return result.fold((left) => Left(left), (right) => Right(right));
    } on Exception catch (e) {
      return Left(CacheFailure(stackTrace: e.toString()));
    }
  }
}

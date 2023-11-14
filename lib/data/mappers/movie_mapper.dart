import 'package:briix_assignment/data/models/movie_model.dart';
import 'package:briix_assignment/domain/entities/movie_entity.dart';

mixin MovieMapper {
  MovieEntity movieModelToEntity(MovieModel model) {
    final entity = MovieEntity(
      id: model.id,
      title: model.title,
      director: model.director,
      summary: model.summary,
      genre: model.genre,
    );

    return entity;
  }

  MovieModel movieEntityToModel(MovieEntity entity) {
    final model = MovieModel(
      id: entity.id,
      title: entity.title,
      director: entity.director,
      summary: entity.summary,
      genre: entity.genre,
    );

    return model;
  }
}

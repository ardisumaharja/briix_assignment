// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'genre.dart';

class MovieEntity extends Equatable {
  final String id;
  final String title;
  final String director;
  final String summary;
  final List<Genre> genre;

  const MovieEntity({
    required this.id,
    required this.title,
    required this.director,
    required this.summary,
    required this.genre,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        director,
        summary,
        genre,
      ];

  MovieEntity copyWith({
    String? id,
    String? title,
    String? director,
    String? summary,
    List<Genre>? genre,
  }) {
    return MovieEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      director: director ?? this.director,
      summary: summary ?? this.summary,
      genre: genre ?? this.genre,
    );
  }
}

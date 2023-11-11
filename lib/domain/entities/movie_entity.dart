// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'genre.dart';

class MovieEntity extends Equatable {
  final int id;
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
}

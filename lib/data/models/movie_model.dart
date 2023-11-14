// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import '../../domain/entities/genre.dart';

class MovieModel extends Equatable {
  final String id;
  final String title;
  final String director;
  final String summary;
  final List<Genre> genre;

  const MovieModel({
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

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      id: map['id'] as String,
      title: map['title'] as String,
      director: map['director'] as String,
      summary: map['summary'] as String,
      genre: List<Genre>.from(
        (map['genre'] as List<dynamic>).map((x) => genreFromString(x)).toList(),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'director': director,
      'summary': summary,
      'genre': genre.map((x) => x.toDisplayName()).toList(),
    };
  }

  String toJson() => json.encode(toMap());

  factory MovieModel.fromJson(String source) =>
      MovieModel.fromMap(json.decode(source) as Map<String, dynamic>);

  MovieModel copyWith({
    String? id,
    String? title,
    String? director,
    String? summary,
    List<Genre>? genre,
  }) {
    return MovieModel(
      id: id ?? this.id,
      title: title ?? this.title,
      director: director ?? this.director,
      summary: summary ?? this.summary,
      genre: genre ?? this.genre,
    );
  }
}

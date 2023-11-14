import 'package:auto_route/auto_route.dart';
import 'package:briix_assignment/application/core/router/app_router.dart';
import 'package:briix_assignment/application/pages/movies/sections/card_movie_item.dart';
import 'package:briix_assignment/domain/entities/genre.dart';
import 'package:briix_assignment/domain/entities/movie_entity.dart';
import 'package:flutter/material.dart';

class ListMovieSection extends StatefulWidget {
  const ListMovieSection(
      {super.key, required this.movieList, required this.onTapBack});

  final List<MovieEntity> movieList;
  final VoidCallback onTapBack;

  @override
  State<ListMovieSection> createState() => _ListMovieSectionState();
}

class _ListMovieSectionState extends State<ListMovieSection> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.movieList.length,
        itemBuilder: (context, index) {
          final item = widget.movieList[index];

          return CardMovieItem(
            onTap: () => context.router
                .push(MovieRoute(isCreate: false, id: item.id))
                .then((_) => {widget.onTapBack.call()}),
            title: item.title,
            director: item.director,
            genres: item.genre.map((e) => e.toDisplayName()).toList(),
            id: item.id,
          );
        },
      ),
    );
  }
}

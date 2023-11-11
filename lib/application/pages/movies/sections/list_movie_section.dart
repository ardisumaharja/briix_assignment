import 'package:briix_assignment/application/pages/movies/sections/card_movie_item.dart';
import 'package:flutter/material.dart';

class ListMovieSection extends StatefulWidget {
  const ListMovieSection({super.key});

  @override
  State<ListMovieSection> createState() => _ListMovieSectionState();
}

class _ListMovieSectionState extends State<ListMovieSection> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CardMovieItem(
            title: 'Power ranger',
            director: 'ardi',
            genres: ['action', 'sci-fi', 'drama'],
          );
        },
      ),
    );
  }
}

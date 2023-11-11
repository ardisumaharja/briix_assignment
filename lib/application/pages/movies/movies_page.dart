import 'package:auto_route/auto_route.dart';
import 'package:briix_assignment/application/pages/movies/sections/button_add_movie_section.dart';
import 'package:briix_assignment/application/pages/movies/sections/card_movie_item.dart';
import 'package:briix_assignment/application/pages/movies/sections/list_movie_section.dart';
import 'package:briix_assignment/application/pages/movies/sections/search_movie_section.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Movies Collection'),
      ),
      body: const Padding(
        padding: EdgeInsets.only(
          top: 10,
          left: 18,
          right: 18,
        ),
        child: Column(
          children: [
            SearchMovieSection(),
            ListMovieSection(),
          ],
        ),
      ),
      floatingActionButton: const ButtonAddMovieSection(),
    );
  }
}

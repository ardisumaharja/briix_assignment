import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:briix_assignment/application/pages/movies/mobX/movie_list_store.dart';
import 'package:briix_assignment/application/pages/movies/sections/button_add_movie_section.dart';
import 'package:briix_assignment/application/pages/movies/sections/list_movie_section.dart';
import 'package:briix_assignment/application/pages/movies/sections/search_movie_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

@RoutePage()
class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  final movieListStore = MovieListStore();

  @override
  void initState() {
    movieListStore.onReadMovieList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Movies Collection'),
      ),
      body: Observer(
        builder: (context) {
          if (movieListStore.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 18,
                right: 18,
              ),
              child: Column(
                children: [
                  SearchMovieSection(
                    onChange: (value) {
                      log('onchangee_test : $value');
                      movieListStore.onSearching(value);
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListMovieSection(
                    movieList: movieListStore.movieList,
                    onTapBack: () => {movieListStore.onReadMovieList()},
                  ),
                ],
              ),
            );
          }
        },
      ),
      floatingActionButton: ButtonAddMovieSection(
        onTapBack: () => {movieListStore.onReadMovieList()},
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:briix_assignment/application/core/app_router.dart';
import 'package:briix_assignment/application/pages/movie/movie_page.dart';
import 'package:flutter/material.dart';

class CardMovieItem extends StatelessWidget {
  const CardMovieItem({
    super.key,
    required this.title,
    required this.director,
    required this.genres,
  });

  final String title;
  final String director;
  final List<String> genres;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Card(
          child: InkWell(
            onTap: () => context.router.push(MovieRoute(isCreate: false)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(title),
                  Text(director),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(genres.join('/')),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

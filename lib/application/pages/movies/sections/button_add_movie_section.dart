import 'package:auto_route/auto_route.dart';
import 'package:briix_assignment/application/core/app_router.dart';
import 'package:briix_assignment/application/pages/movie/movie_page.dart';
import 'package:flutter/material.dart';

class ButtonAddMovieSection extends StatelessWidget {
  const ButtonAddMovieSection({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => context.router.push(
        MovieRoute(isCreate: true),
      ),
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}

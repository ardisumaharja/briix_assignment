import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/movie/movie_page.dart';
import '../pages/movies/movies_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MoviesRoute.page, initial: true),
        AutoRoute(page: MovieRoute.page),
      ];
}

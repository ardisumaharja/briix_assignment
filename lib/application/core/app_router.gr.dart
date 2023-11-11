// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MovieRoute.name: (routeData) {
      final args = routeData.argsAs<MovieRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MoviePage(
          key: args.key,
          isCreate: args.isCreate,
        ),
      );
    },
    MoviesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MoviesPage(),
      );
    },
  };
}

/// generated route for
/// [MoviePage]
class MovieRoute extends PageRouteInfo<MovieRouteArgs> {
  MovieRoute({
    Key? key,
    required bool isCreate,
    List<PageRouteInfo>? children,
  }) : super(
          MovieRoute.name,
          args: MovieRouteArgs(
            key: key,
            isCreate: isCreate,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieRoute';

  static const PageInfo<MovieRouteArgs> page = PageInfo<MovieRouteArgs>(name);
}

class MovieRouteArgs {
  const MovieRouteArgs({
    this.key,
    required this.isCreate,
  });

  final Key? key;

  final bool isCreate;

  @override
  String toString() {
    return 'MovieRouteArgs{key: $key, isCreate: $isCreate}';
  }
}

/// generated route for
/// [MoviesPage]
class MoviesRoute extends PageRouteInfo<void> {
  const MoviesRoute({List<PageRouteInfo>? children})
      : super(
          MoviesRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoviesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

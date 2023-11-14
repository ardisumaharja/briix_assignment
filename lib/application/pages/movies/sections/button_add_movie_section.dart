import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/router/app_router.dart';

class ButtonAddMovieSection extends StatelessWidget {
  const ButtonAddMovieSection({super.key, required this.onTapBack});

  final VoidCallback onTapBack;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => context.router
          .push(
            MovieRoute(isCreate: true),
          )
          .then((_) => onTapBack.call()),
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}

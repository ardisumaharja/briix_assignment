import 'package:auto_route/auto_route.dart';
import 'package:briix_assignment/application/pages/movie/sections/button_submit_section.dart';
import 'package:briix_assignment/application/pages/movie/sections/form_section.dart';
import 'package:briix_assignment/domain/entities/genre.dart';
import 'package:briix_assignment/domain/entities/movie_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import '../../components/molecule/regular_chips.dart';
import 'mobX/movie_store.dart';

@RoutePage()
class MoviePage extends StatefulWidget {
  const MoviePage({super.key, required this.isCreate, this.id});

  final bool isCreate;
  final String? id;

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  final movieStore = GetIt.I<MovieStore>();

  @override
  void initState() {
    if (!widget.isCreate && widget.id != null) {
      movieStore.onReadMovieDetail(widget.id ?? '');
    }
    super.initState();
  }

  bool isFormFilled(MovieEntity params) {
    if (params.title.isNotEmpty &&
        params.director.isNotEmpty &&
        params.summary.isNotEmpty &&
        params.genre.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isCreate ? 'Input Movie' : 'Detail Movie'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          if (!widget.isCreate) ...[
            IconButton(
              onPressed: () => movieStore
                  .onDeleteMovie(widget.id ?? '')
                  .then((value) => context.router.pop()),
              icon: const Icon(Icons.delete),
            ),
            const SizedBox(width: 18),
          ]
        ],
      ),
      body: Observer(
        warnWhenNoObservables: true,
        builder: (context) {
          if (movieStore.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FormSection(
                    movieEntity: movieStore.params,
                    titleChange: (value) => movieStore.onChangeTitle(value),
                    directorChange: (value) =>
                        movieStore.onChangeDirector(value),
                    summaryChange: (value) => movieStore.onChangeSummary(value),
                  ),
                  const SizedBox(height: 18),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: Genre.values
                        .map(
                          (e) => InkWell(
                            onTap: () => {},
                            child: RegularChip(
                                isSelected: movieStore.params.genre
                                    .where((element) => element == e)
                                    .isEmpty,
                                content: e.toDisplayName(),
                                onTap: () => movieStore.onChangeGenre(e)),
                          ),
                        )
                        .toList(),
                  ),
                  const Expanded(child: SizedBox()),
                  if (widget.isCreate == true) ...[
                    ButtonSubmitSection(
                      title: 'Input Movie',
                      onPress: isFormFilled(movieStore.params)
                          ? () => movieStore
                              .onCreateMovie()
                              .then((value) => context.router.pop(context))
                          : null,
                    ),
                  ] else ...[
                    ButtonSubmitSection(
                      title: 'Update Movie',
                      onPress: isFormFilled(movieStore.params)
                          ? () => movieStore
                              .onUpdateMovie()
                              .then((value) => context.router.pop(context))
                          : null,
                    ),
                  ]
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MovieListStore on _MovieListStore, Store {
  late final _$isLoadingAtom =
      Atom(name: '_MovieListStore.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_MovieListStore.errorMessage', context: context);

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$movieListAtom =
      Atom(name: '_MovieListStore.movieList', context: context);

  @override
  List<MovieEntity> get movieList {
    _$movieListAtom.reportRead();
    return super.movieList;
  }

  @override
  set movieList(List<MovieEntity> value) {
    _$movieListAtom.reportWrite(value, super.movieList, () {
      super.movieList = value;
    });
  }

  late final _$movieListBaseAtom =
      Atom(name: '_MovieListStore.movieListBase', context: context);

  @override
  List<MovieEntity> get movieListBase {
    _$movieListBaseAtom.reportRead();
    return super.movieListBase;
  }

  @override
  set movieListBase(List<MovieEntity> value) {
    _$movieListBaseAtom.reportWrite(value, super.movieListBase, () {
      super.movieListBase = value;
    });
  }

  late final _$onReadMovieListAsyncAction =
      AsyncAction('_MovieListStore.onReadMovieList', context: context);

  @override
  Future<void> onReadMovieList() {
    return _$onReadMovieListAsyncAction.run(() => super.onReadMovieList());
  }

  late final _$_MovieListStoreActionController =
      ActionController(name: '_MovieListStore', context: context);

  @override
  void onSearching(String text) {
    final _$actionInfo = _$_MovieListStoreActionController.startAction(
        name: '_MovieListStore.onSearching');
    try {
      return super.onSearching(text);
    } finally {
      _$_MovieListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
errorMessage: ${errorMessage},
movieList: ${movieList},
movieListBase: ${movieListBase}
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MovieStore on _MovieStore, Store {
  late final _$isCreateSuccessAtom =
      Atom(name: '_MovieStore.isCreateSuccess', context: context);

  @override
  bool get isCreateSuccess {
    _$isCreateSuccessAtom.reportRead();
    return super.isCreateSuccess;
  }

  @override
  set isCreateSuccess(bool value) {
    _$isCreateSuccessAtom.reportWrite(value, super.isCreateSuccess, () {
      super.isCreateSuccess = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_MovieStore.errorMessage', context: context);

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

  late final _$isLoadingAtom =
      Atom(name: '_MovieStore.isLoading', context: context);

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

  late final _$paramsAtom = Atom(name: '_MovieStore.params', context: context);

  @override
  MovieEntity get params {
    _$paramsAtom.reportRead();
    return super.params;
  }

  @override
  set params(MovieEntity value) {
    _$paramsAtom.reportWrite(value, super.params, () {
      super.params = value;
    });
  }

  late final _$onCreateMovieAsyncAction =
      AsyncAction('_MovieStore.onCreateMovie', context: context);

  @override
  Future<void> onCreateMovie() {
    return _$onCreateMovieAsyncAction.run(() => super.onCreateMovie());
  }

  late final _$onUpdateMovieAsyncAction =
      AsyncAction('_MovieStore.onUpdateMovie', context: context);

  @override
  Future<void> onUpdateMovie() {
    return _$onUpdateMovieAsyncAction.run(() => super.onUpdateMovie());
  }

  late final _$onReadMovieDetailAsyncAction =
      AsyncAction('_MovieStore.onReadMovieDetail', context: context);

  @override
  Future<void> onReadMovieDetail(String id) {
    return _$onReadMovieDetailAsyncAction
        .run(() => super.onReadMovieDetail(id));
  }

  late final _$onDeleteMovieAsyncAction =
      AsyncAction('_MovieStore.onDeleteMovie', context: context);

  @override
  Future<void> onDeleteMovie(String id) {
    return _$onDeleteMovieAsyncAction.run(() => super.onDeleteMovie(id));
  }

  late final _$_MovieStoreActionController =
      ActionController(name: '_MovieStore', context: context);

  @override
  void changeLoading() {
    final _$actionInfo = _$_MovieStoreActionController.startAction(
        name: '_MovieStore.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_MovieStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangeTitle(String title) {
    final _$actionInfo = _$_MovieStoreActionController.startAction(
        name: '_MovieStore.onChangeTitle');
    try {
      return super.onChangeTitle(title);
    } finally {
      _$_MovieStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangeDirector(String director) {
    final _$actionInfo = _$_MovieStoreActionController.startAction(
        name: '_MovieStore.onChangeDirector');
    try {
      return super.onChangeDirector(director);
    } finally {
      _$_MovieStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangeSummary(String summary) {
    final _$actionInfo = _$_MovieStoreActionController.startAction(
        name: '_MovieStore.onChangeSummary');
    try {
      return super.onChangeSummary(summary);
    } finally {
      _$_MovieStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangeGenre(Genre genre) {
    final _$actionInfo = _$_MovieStoreActionController.startAction(
        name: '_MovieStore.onChangeGenre');
    try {
      return super.onChangeGenre(genre);
    } finally {
      _$_MovieStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isCreateSuccess: ${isCreateSuccess},
errorMessage: ${errorMessage},
isLoading: ${isLoading},
params: ${params}
    ''';
  }
}

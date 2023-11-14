import 'package:briix_assignment/application/pages/movie/mobX/movie_store.dart';
import 'package:briix_assignment/application/pages/movies/mobX/movie_list_store.dart';
import 'package:briix_assignment/data/repositories/movie_repo_local.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../../data/data_sources/interface/movie_local_data_source_interface.dart';
import '../../data/data_sources/local/hive_local_data_source.dart';
import '../../domain/repositories/movie_repo.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  if (!kIsWeb) {
    final appDocDir = await getApplicationDocumentsDirectory();
    BoxCollection.open('movies', {'movie_list'}, path: appDocDir.path);
    Hive.init('${appDocDir.path}/db');
  }

  Hive.openBox('movies');

  getIt.registerLazySingleton<HiveInterface>(() => Hive);

  // getIt.registerLazySingleton(() => BoxCollection);

  /// ========================= LOCAL DATA SOURCE =========================
  getIt.registerLazySingleton<MovieLocalDataSourceInterface>(
    () => HiveLocaldataSource(cacheClient: getIt()),
  );

  /// ========================= END LOCAL DATA SOURCE =========================

  /// ========================= REPOSITORY =========================
  getIt.registerLazySingleton<MovieRepo>(
      () => MovieRepoLocal(localDataSource: getIt()));

  /// ========================= END REPOSITORY =========================

  /// ========================= STATE MANAGEMENT =========================
  getIt.registerFactory<MovieStore>(() => MovieStore());
  getIt.registerFactory<MovieListStore>(() => MovieListStore());

  /// ========================= END STATE MANAGEMENT =========================
}

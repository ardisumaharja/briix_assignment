// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:developer';
import 'package:hive/hive.dart';
import 'package:briix_assignment/data/data_sources/interface/movie_local_data_source_interface.dart';
import 'package:briix_assignment/data/models/movie_model.dart';
import 'service_cache_handler_mixin.dart';

class HiveLocaldataSource
    with ServiceCacheHandlerMixin
    implements MovieLocalDataSourceInterface {
  final HiveInterface cacheClient;

  HiveLocaldataSource({
    required this.cacheClient,
  });

  @override
  Future<bool> createMovie({required MovieModel paramMovie}) async {
    final result = await setCache<String>(
      cacheClient,
      boxKey: 'movies',
      dataKey: paramMovie.id,
      value: paramMovie.toJson(),
    );

    return result;
  }

  @override
  Future<bool> deleteMovie({required String id}) async {
    final result = await deleteCache(
      cacheClient,
      boxKey: 'movies',
      dataKey: id,
    );

    return result;
  }

  @override
  Future<MovieModel> readDetailMovie({required String id}) async {
    log('test_detail_movie ');
    final result = await getCache<String>(
      cacheClient,
      boxKey: 'movies',
      dataKey: id,
    );

    return MovieModel.fromJson(result);
  }

  @override
  Future<List<MovieModel>> readListMovie({required String searchText}) async {
    final result = await getCacheList(cacheClient, boxKey: 'movies');
    return result.map((e) => MovieModel.fromJson(e)).toList();
  }

  @override
  Future<bool> updateMovie({required MovieModel paramMovie}) async {
    final result = await setCache<String>(
      cacheClient,
      boxKey: 'movies',
      dataKey: paramMovie.id,
      value: paramMovie.toJson(),
    );

    return result;
  }
}

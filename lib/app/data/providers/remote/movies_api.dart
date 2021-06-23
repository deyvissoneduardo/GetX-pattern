import 'package:app_dp/app/data/model/movie.dart';
import 'package:app_dp/app/utils/constantes.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class MoviesApi {
  final Dio _dio = Get.find<Dio>();

  Future<List<Movie>> getTopMovies() async {
    final response = await _dio.get(
      '/movie/top_rated',
      queryParameters: {
        'api_key': Constantes.THEMOVIEAPI,
        'language': 'pt-BR',
      },
    );
    return (response.data['results'] as List)
        .map((e) => Movie.fromJson(e))
        .toList();
  }
}

import 'package:app_dp/app/data/model/movie.dart';
import 'package:app_dp/app/data/providers/remote/movies_api.dart';
import 'package:get/get.dart';

class MoviesRepo {
  final MoviesApi _moviesApi = Get.find<MoviesApi>();

  Future<List<Movie>> getTopMovies() => _moviesApi.getTopMovies();
}

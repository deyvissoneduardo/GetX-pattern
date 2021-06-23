import 'package:app_dp/app/data/model/movie.dart';
import 'package:app_dp/app/data/repository/local/local_auth_repo.dart';
import 'package:app_dp/app/data/repository/remote/movies_repo.dart';
import 'package:app_dp/app/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final LocalAuthRepo _localAuthRepo = Get.find<LocalAuthRepo>();
  final MoviesRepo _moviesRepo = Get.find<MoviesRepo>();

  List<Movie> _movies = [];
  List<Movie> get movies => _movies;

  @override
  void onReady() {
    super.onReady();
    _load();
  }

  Future<void> logOut() async {
    await _localAuthRepo.clearSession();
    Get.offNamedUntil(AppRoutes.LOGIN, (_) => false);
  }

  Future<void> _load() async {
    try {
      _movies = await _moviesRepo.getTopMovies();
      // ignore: avoid_print
      print('movies:::::; ${_movies.length}');
      update();
    } on Exception catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}

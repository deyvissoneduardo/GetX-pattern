import 'package:app_dp/app/data/repository/local/local_auth_repo.dart';
import 'package:app_dp/app/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final LocalAuthRepo _localAuthRepo = Get.find<LocalAuthRepo>();

  Future<void> logOut() async {
    await _localAuthRepo.clearSession();
    Get.offNamedUntil(AppRoutes.LOGIN, (_) => false);
  }
}

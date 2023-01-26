import 'package:get/get.dart';
import 'package:mms_assignment/routes/app_routes.dart';

class WelcomePageController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  onOpenAccountButtonPress() {
    Get.toNamed(AppRoutes.signUp);
  }

  onSignInButtonPress() {
    Get.offNamed(AppRoutes.signIn);
  }
}

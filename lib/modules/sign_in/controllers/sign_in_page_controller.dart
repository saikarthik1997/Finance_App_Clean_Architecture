import 'package:get/get.dart';

class SignInPageController extends GetxController {
  bool rememberMe = false;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  onRememberMeTap(bool value) {
    rememberMe = value;
    update();
  }
}

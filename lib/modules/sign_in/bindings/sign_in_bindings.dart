import 'package:get/instance_manager.dart';
import 'package:mms_assignment/modules/sign_in/controllers/sign_in_page_controller.dart';

class SignInBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInPageController());
  }
}

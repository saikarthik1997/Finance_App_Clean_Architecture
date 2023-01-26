import 'package:get/instance_manager.dart';
import 'package:mms_assignment/modules/sign_up/controllers/sign_up_page_controller.dart';

class SignUpBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpPageController>(() => SignUpPageController());
  }
}

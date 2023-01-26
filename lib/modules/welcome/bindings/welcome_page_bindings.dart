import 'package:get/instance_manager.dart';
import 'package:mms_assignment/modules/welcome/controllers/welcome_page_controller.dart';

class WelcomePageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomePageController>(() => WelcomePageController());
  }
}

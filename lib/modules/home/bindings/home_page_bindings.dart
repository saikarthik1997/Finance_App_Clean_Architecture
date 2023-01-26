import 'package:get/instance_manager.dart';
import 'package:mms_assignment/modules/home/controllers/home_page_controller.dart';

class HomePageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() => HomePageController());
    // TODO: implement dependencies
  }
}

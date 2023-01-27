import 'package:get/instance_manager.dart';
import 'package:mms_assignment/modules/otp/controllers/otp_page_controller.dart';

class OtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtpPageController());
  }
}

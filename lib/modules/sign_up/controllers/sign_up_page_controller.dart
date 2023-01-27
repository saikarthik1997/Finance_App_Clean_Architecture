import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:mms_assignment/routes/app_routes.dart';

class SignUpPageController extends GetxController {
  DateTime? pickedDate;
  String? pickedDateFormatted;
  String? selectedGender;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  onDateSelect(DateTime value) {
    pickedDate = value;
    pickedDateFormatted = Jiffy(pickedDate).format("do MMM yyyy");
    update();
  }

  onGenderSelect(String value) {
    selectedGender = value;
    update();
  }

  onCreateAccountClick() {
    Get.toNamed(AppRoutes.otp);
  }
}

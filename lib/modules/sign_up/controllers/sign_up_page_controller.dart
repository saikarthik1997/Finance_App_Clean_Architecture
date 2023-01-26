import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:jiffy/jiffy.dart';

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
}

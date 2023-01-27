import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpPageController extends GetxController {
  late FocusNode focusNode;
  late TextEditingController pinTextController;
  bool showCreatedSuccessView = false;
  @override
  void onInit() {
    focusNode = FocusNode();
    pinTextController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    focusNode.dispose();
    pinTextController.dispose();
    super.onClose();
  }

  void onOtpChanged(String? val) {
    update();
  }

  onSubmitPress() {
    showCreatedSuccessView = true;
    update();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mms_assignment/common/values/app_images.dart';
import 'package:mms_assignment/common/values/strings.dart';

class HomePageController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController tabController;
  int currentIndex = 0;
  @override
  void onInit() {
    tabController = TabController(length: 5, vsync: this);
    super.onInit();
  }

  getBgImageSrcFromTitle(String title) {
    switch (title) {
      case CommonStrings.investmentAccLabel:
        return AppImages.investmentBgImage;
      case CommonStrings.walletLabel:
        return AppImages.walletBgImage;
      case CommonStrings.loanLabel:
        return AppImages.loanBgImage;
    }
  }
}

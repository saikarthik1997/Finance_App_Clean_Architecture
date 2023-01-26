import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController tabController;
  int currentIndex = 0;
  @override
  void onInit() {
    tabController = TabController(length: 4, vsync: this);
    super.onInit();
  }
}

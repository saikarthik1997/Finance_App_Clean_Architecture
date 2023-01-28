import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mms_assignment/common/values/app_images.dart';
import 'package:mms_assignment/common/values/strings.dart';
import 'package:mms_assignment/data/models/home/home_page_models.dart';
import 'package:mms_assignment/data/repositories/home/i_home_repository.dart';

class HomePageController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final IHomeRepository homeRepository;
  HomePageController(this.homeRepository);
  late final TabController tabController;
  int currentIndex = 0;
  bool loading = false;
  bool errorState = false;
  String? errorMessage;
  HomeDataResponse? homeData;

  @override
  void onInit() {
    tabController = TabController(length: 5, vsync: this);
    fetchData();
    super.onInit();
  }

  fetchData() async {
    loading = true;
    update();
    Either<String, HomeDataResponse> result =
        await homeRepository.fetchHomeData();
    result.fold((l) {
      errorState = true;
      errorMessage = l;
    }, (r) {
      homeData = r;
      errorState = false;
    });
    loading = false;
    update();
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

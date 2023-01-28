import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';
import 'package:mms_assignment/data/repositories/home/home_repository.dart';
import 'package:mms_assignment/data/repositories/home/i_home_repository.dart';
import 'package:mms_assignment/modules/home/controllers/home_page_controller.dart';

class HomePageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IHomeRepository>(
        () => HomeRepository(apiClient: Get.find<Dio>()));
    Get.lazyPut<HomePageController>(
        () => HomePageController(Get.find<IHomeRepository>()));
  }
}

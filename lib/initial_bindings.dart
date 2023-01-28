import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';
import 'package:mms_assignment/data/network/api_client.dart';

class InitialAppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<Dio>(ApiClient.instance);
  }
}

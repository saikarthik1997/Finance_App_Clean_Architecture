import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  ApiClient._();
  static final Dio instance = initializeInstance();
  static Dio initializeInstance() {
    debugPrint("intiialize dio called");
    final dioInstance = Dio();
    //adding timeouts
    dioInstance.options = BaseOptions(
        connectTimeout: 30000,
        receiveTimeout: 30000,
        responseType: ResponseType.json);
    if (kDebugMode) {
      //for logging
      dioInstance.interceptors.add(PrettyDioLogger());
    }
    return dioInstance;
  }
}

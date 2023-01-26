import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mms_assignment/common/strings.dart';
import 'package:mms_assignment/routes/app_pages.dart';
import 'package:mms_assignment/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: CommonStrings.appName,
      getPages: AppPages.pageList,
      initialRoute: AppRoutes.signUp,
    );
  }
}

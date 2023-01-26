import 'package:get/route_manager.dart';
import 'package:mms_assignment/modules/home/bindings/home_page_bindings.dart';
import 'package:mms_assignment/modules/home/views/home_page_view.dart';
import 'package:mms_assignment/modules/sign_in/bindings/sign_in_bindings.dart';
import 'package:mms_assignment/modules/sign_in/views/sign_in_page_view.dart';
import 'package:mms_assignment/modules/sign_up/bindings/sign_up_bindings.dart';
import 'package:mms_assignment/modules/sign_up/views/sign_up_page_view.dart';
import 'package:mms_assignment/routes/app_routes.dart';

class AppPages {
  static final pageList = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePageView(),
      binding: HomePageBindings(),
    ),
    GetPage(
      name: AppRoutes.signIn,
      page: () => const SignInPageView(),
      binding: SignInBindings(),
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => const SignUpPageView(),
      binding: SignUpBindings(),
    ),
  ];
}

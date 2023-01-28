import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mms_assignment/common/values/app_colors.dart';
import 'package:mms_assignment/common/widgets/buttons.dart';
import 'package:mms_assignment/common/widgets/textfield.dart';
import 'package:mms_assignment/modules/sign_in/controllers/sign_in_page_controller.dart';
import 'package:mms_assignment/routes/app_routes.dart';

class SignInPageView extends StatelessWidget {
  const SignInPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<SignInPageController>(builder: (controller) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 250.0,
                    child: Center(
                      child: RichText(
                        text: const TextSpan(
                          text: "Global",
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 36.0,
                              fontWeight: FontWeight.w900),
                          children: [
                            TextSpan(
                              text: 'FINANCE',
                              style: TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: 36.0,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  CustomTextField(
                      onChanged: (val) {}, hintText: "Phone Number"),
                  const SizedBox(
                    height: 24.0,
                  ),
                  CustomTextField(onChanged: (val) {}, hintText: "PIN"),
                  const SizedBox(height: 24.0),
                  Row(
                    children: [
                      const SizedBox(
                        width: 6.0,
                      ),
                      SizedBox(
                        height: 12.0,
                        width: 12.0,
                        child: Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0)),
                            side: const BorderSide(color: Colors.grey),
                            activeColor: AppColors.primaryColor,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: controller.rememberMe,
                            onChanged: (val) {
                              controller.onRememberMeTap(val!);
                            }),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      const Text("Remember me"),
                      const Spacer(),
                      const Text(
                        "Forgot your password?",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(height: 36.0),
                  PrimaryButton(
                      buttonText: "Sign In",
                      onTap: () {
                        Get.offAllNamed(AppRoutes.home);
                      }),
                  const SizedBox(height: 24.0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Do not have an account?"),
                      InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.signUp);
                          },
                          child: const Text(
                            " Sign Up here",
                            style: TextStyle(color: AppColors.primaryColor),
                          )),
                    ],
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

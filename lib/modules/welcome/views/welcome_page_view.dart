import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mms_assignment/common/values/app_colors.dart';
import 'package:mms_assignment/common/widgets/buttons.dart';
import 'package:mms_assignment/modules/welcome/controllers/welcome_page_controller.dart';

class WelcomePageView extends StatelessWidget {
  const WelcomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          child: Column(
            children: [
              Expanded(
                flex: 4,
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
              Expanded(
                flex: 1,
                child: GetBuilder<WelcomePageController>(builder: (controller) {
                  return Column(
                    children: [
                      PrimaryButton(
                          buttonText: "Open an Account",
                          onTap: controller.onOpenAccountButtonPress),
                      const SizedBox(
                        height: 16.0,
                      ),
                      SecondaryButton(
                          buttonText: "Sign In",
                          onTap: controller.onSignInButtonPress),
                    ],
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

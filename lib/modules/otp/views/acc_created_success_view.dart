import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mms_assignment/common/widgets/buttons.dart';
import 'package:mms_assignment/routes/app_routes.dart';

class AccCreatedSuccessView extends StatelessWidget {
  const AccCreatedSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 100.0,
          ),
          const Text(
            "Account Created",
            style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 26.0),
          const Text(
            "Congratulations. Your account has been created",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 26.0),
          const Text(
            "Please click on the 'Continue' button to\nget into app and start taking charge of your finances",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 100.0),
          PrimaryButton(
              buttonText: "Continue",
              onTap: () {
                Get.offAllNamed(AppRoutes.home);
              })
        ],
      ),
    );
  }
}

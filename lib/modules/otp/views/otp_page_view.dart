import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mms_assignment/common/values/app_colors.dart';
import 'package:mms_assignment/common/widgets/buttons.dart';
import 'package:mms_assignment/modules/otp/controllers/otp_page_controller.dart';
import 'package:mms_assignment/modules/otp/views/acc_created_success_view.dart';
import 'package:pinput/pinput.dart';

class OtpPageView extends StatelessWidget {
  const OtpPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 30,
        iconTheme: const IconThemeData(color: AppColors.primaryColor),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      body: GetBuilder<OtpPageController>(builder: (controller) {
        if (controller.showCreatedSuccessView) {
          return const AccCreatedSuccessView();
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 100.0),
                  const Icon(
                    Icons.phone,
                    color: AppColors.primaryColor,
                    size: 96.0,
                  ),
                  const SizedBox(height: 20.0),
                  const Text("Check your Phone"),
                  const SizedBox(height: 12.0),
                  const Text(
                    "To confirm your account,enter the 4 digit code sent to\n +1 023 023 1256",
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30.0),
                  Pinput(
                      closeKeyboardWhenCompleted: false,
                      focusNode: controller.focusNode,
                      onChanged: controller.onOtpChanged,
                      controller: controller.pinTextController,
                      length: 4,
                      separator: const SizedBox(width: 20.0),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onSubmitted: (val) {
                        debugPrint("val is $val");
                      },
                      submittedPinTheme: getPinTheme(),
                      followingPinTheme: getPinTheme(borderColor: Colors.grey),
                      focusedPinTheme: getPinTheme(),
                      defaultPinTheme: getPinTheme()),
                  const SizedBox(height: 30.0),
                  PrimaryButton(
                    buttonText: "Submit",
                    onTap: controller.onSubmitPress,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  PrimaryButton(
                    buttonText: "Resend Code",
                    onTap: () {},
                    textColor: AppColors.textColor,
                    buttonColor: AppColors.lightGreyColor,
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  getPinTheme({Color borderColor = AppColors.primaryColor}) {
    return PinTheme(
      textStyle: const TextStyle(fontSize: 26.0, color: AppColors.primaryColor),
      width: 45.0,
      height: 80.0,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1.5),
      ),
    );
  }
}

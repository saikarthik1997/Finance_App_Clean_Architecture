import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mms_assignment/common/values/app_colors.dart';
import 'package:mms_assignment/common/widgets/buttons.dart';
import 'package:mms_assignment/common/widgets/datepicker.dart';
import 'package:mms_assignment/common/widgets/dropdown.dart';
import 'package:mms_assignment/common/widgets/textfield.dart';
import 'package:mms_assignment/modules/sign_up/controllers/sign_up_page_controller.dart';

class SignUpPageView extends StatelessWidget {
  const SignUpPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              toolbarHeight: 30,
              iconTheme: IconThemeData(color: AppColors.primaryColor),
              backgroundColor: Colors.white,
              shadowColor: Colors.transparent,
            )
          ];
        },
        body: SafeArea(
          child: GetBuilder<SignUpPageController>(builder: (controller) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 150.0,
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
                    CustomTextField(
                      hintText: "First Name",
                      onChanged: (val) {},
                    ),
                    const SizedBox(height: 16.0),
                    CustomTextField(
                      hintText: "Middle Name",
                      onChanged: (val) {},
                    ),
                    const SizedBox(height: 16.0),
                    CustomTextField(
                      hintText: "Last Name",
                      onChanged: (val) {},
                    ),
                    const SizedBox(height: 16.0),
                    CustomDatePicker(
                        displayText: controller.pickedDate == null
                            ? "Date of Birth"
                            : controller.pickedDateFormatted ?? "-",
                        onDatePicked: controller.onDateSelect),
                    const SizedBox(height: 16.0),
                    CustomTextField(
                      obscureText: true,
                      hintText: "Confirm Password",
                      onChanged: (val) {},
                    ),
                    const SizedBox(height: 16.0),
                    CustomTextField(
                      hintText: "Phone Number",
                      onChanged: (val) {},
                    ),
                    const SizedBox(height: 16.0),
                    CustomDropdown(
                      onChanged: controller.onGenderSelect,
                      hintText: "Gender",
                      items: const ["Male", "Female"],
                      value: controller.selectedGender,
                    ),
                    const SizedBox(height: 32.0),
                    PrimaryButton(buttonText: "Create Account", onTap: () {}),
                    const SizedBox(height: 20.0),
                    const Text(
                      "By tapping \"Create Account\",You will\n accept all Terms & Conditions",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40.0),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

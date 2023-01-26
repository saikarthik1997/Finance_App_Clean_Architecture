import 'package:flutter/material.dart';
import 'package:mms_assignment/common/values/app_colors.dart';
import 'package:mms_assignment/common/widgets/textfield.dart';

class SignUpPageView extends StatelessWidget {
  const SignUpPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.primaryColor),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              RichText(
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
              CustomTextField(
                hintText: "hint",
                onChanged: (val) {},
              ),
              const SizedBox(height: 16.0),
              CustomTextField(
                hintText: "hint",
                onChanged: (val) {},
              ),
              const SizedBox(height: 16.0),
              CustomTextField(
                hintText: "hint",
                onChanged: (val) {},
              ),
              const SizedBox(height: 16.0),
              CustomTextField(
                hintText: "hint",
                onChanged: (val) {},
              ),
              const SizedBox(height: 16.0),
              CustomTextField(
                hintText: "hint",
                onChanged: (val) {},
              ),
              const SizedBox(height: 16.0),
              CustomTextField(
                hintText: "hint",
                onChanged: (val) {},
              ),
              const SizedBox(height: 16.0),
              CustomTextField(
                hintText: "hint",
                onChanged: (val) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

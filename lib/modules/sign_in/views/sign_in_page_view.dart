import 'package:flutter/material.dart';
import 'package:mms_assignment/common/values/app_colors.dart';
import 'package:mms_assignment/common/widgets/buttons.dart';
import 'package:mms_assignment/common/widgets/textfield.dart';

class SignInPageView extends StatelessWidget {
  const SignInPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                const SizedBox(
                  height: 16.0,
                ),
                CustomTextField(onChanged: (val) {}, hintText: "Phone Number"),
                const SizedBox(
                  height: 16.0,
                ),
                CustomTextField(onChanged: (val) {}, hintText: "PIN"),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const Text("Remember me"),
                    Spacer(),
                    Text("Forgot your password?")
                  ],
                ),
                const SizedBox(height: 16.0),
                PrimaryButton(buttonText: "Sign In", onTap: () {}),
                const SizedBox(height: 16.0),
                Text("Do not have an account? Sign Up here")
              ],
            ),
          ),
        ),
      ),
    );
  }
}

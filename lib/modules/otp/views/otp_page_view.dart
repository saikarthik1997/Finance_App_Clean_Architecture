import 'package:flutter/material.dart';
import 'package:mms_assignment/common/values/app_colors.dart';

class OtpPageView extends StatelessWidget {
  const OtpPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        iconTheme: const IconThemeData(color: AppColors.primaryColor),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100.0),
            Icon(
              Icons.phone,
              color: AppColors.primaryColor,
              size: 96.0,
            ),
            const SizedBox(height: 20.0),
            Text("Check your Phone"),
            SizedBox(height: 12.0),
            Text(
              "To confirm your account,enter the 4 digit code sent to\n +1 023 023 1256",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}

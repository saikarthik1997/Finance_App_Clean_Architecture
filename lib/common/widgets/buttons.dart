import 'package:flutter/material.dart';
import 'package:mms_assignment/common/values/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final Color textColor;
  final Color buttonColor;
  const PrimaryButton({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.textColor = AppColors.whiteColor,
    this.buttonColor = AppColors.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                color: textColor, fontSize: 14.0, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  const SecondaryButton(
      {super.key, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor),
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
                color: AppColors.primaryColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}

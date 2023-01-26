import 'package:flutter/material.dart';
import 'package:mms_assignment/common/values/app_colors.dart';

class CustomDatePicker extends StatelessWidget {
  final String displayText;
  final Function onDatePicked;
  const CustomDatePicker(
      {super.key, required this.displayText, required this.onDatePicked});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        FocusScope.of(context).unfocus();
        DateTime? pickedDate = await showDatePicker(
            builder: (context, child) {
              return Theme(
                data: ThemeData(
                  colorScheme: const ColorScheme.light(
                    primary: AppColors.primaryColor, // header background color
                  ),
                ),
                child: child!,
              );
            },
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1920),
            lastDate: DateTime.now());
        if (pickedDate != null) {
          onDatePicked(pickedDate);
        }
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(color: Colors.grey)),
        child: Text(
          displayText,
          style:
              TextStyle(fontSize: 15.0, color: Colors.black.withOpacity(0.65)),
        ),
      ),
    );
  }
}

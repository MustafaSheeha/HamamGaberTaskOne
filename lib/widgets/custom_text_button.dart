import 'package:flutter/material.dart';
import 'package:hamam_gaber_task_one/utils/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.buttonName, this.onPressed,
  });
  final String buttonName;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    // final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return TextButton(
        onPressed: onPressed,
        child: Text(buttonName,
            style: TextStyle(
              fontSize: screenWidth * 0.06,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            )));
  }
}

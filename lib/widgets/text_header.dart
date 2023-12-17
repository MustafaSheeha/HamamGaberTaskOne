
import 'package:flutter/material.dart';
import 'package:hamam_gaber_task_one/utils/app_colors.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({
    super.key, required this.title,
  });

final String title;
  @override
  Widget build(BuildContext context) {
    // final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Text(
      title,
      style: TextStyle(
          color: AppColors.white,
          fontSize: screenWidth * 0.1,
          fontWeight: FontWeight.bold),
    );
  }
}

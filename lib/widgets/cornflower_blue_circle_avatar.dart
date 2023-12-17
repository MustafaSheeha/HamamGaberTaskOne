
import 'package:flutter/material.dart';
import 'package:hamam_gaber_task_one/utils/app_colors.dart';

class CornflowerBlueCircleAvatar extends StatelessWidget {
  const CornflowerBlueCircleAvatar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    // final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return CircleAvatar(
      radius: screenWidth * 1.1,
      backgroundColor: AppColors.cornflowerBlue,
    );
  }
}

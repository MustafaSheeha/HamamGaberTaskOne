
import 'package:flutter/material.dart';
import 'package:hamam_gaber_task_one/utils/app_colors.dart';

class TropicalBlueCircleAvatar extends StatelessWidget {
  const TropicalBlueCircleAvatar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    // final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return CircleAvatar(
      radius: screenWidth * 0.58,
      backgroundColor: AppColors.tropicalBlue,
    );
  }
}

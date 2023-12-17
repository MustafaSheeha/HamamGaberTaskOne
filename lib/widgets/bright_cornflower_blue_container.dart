import 'package:flutter/material.dart';
import 'package:hamam_gaber_task_one/utils/app_colors.dart';

class BrightCornflowerBlueContainer extends StatelessWidget {
  const BrightCornflowerBlueContainer({
    super.key,
    this.color, this.width,
  });
  final double? width;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHight * 0.019,
      width:width ?? screenWidth * 0.2,
      color: color ?? AppColors.brightCornflowerBlue,
    );
  }
}

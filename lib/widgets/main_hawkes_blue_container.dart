import 'package:flutter/material.dart';
import 'package:hamam_gaber_task_one/utils/app_colors.dart';

class MainHawkesBlueContainer extends StatelessWidget {
  const MainHawkesBlueContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHight,
      width: screenWidth,
      decoration: const BoxDecoration(
        color: AppColors.hawkesBlue,
      ),
    );
  }
}

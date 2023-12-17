import 'package:flutter/material.dart';
import 'package:hamam_gaber_task_one/utils/app_colors.dart';
import 'package:hamam_gaber_task_one/utils/navigation.dart';

class CustomArrowBackIOSIconButton extends StatelessWidget {
  const CustomArrowBackIOSIconButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
        color: AppColors.white,
      ),
      onPressed: () {
        navigatePop(context);
      },
    );
  }
}

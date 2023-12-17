
import 'package:flutter/material.dart';
import 'package:hamam_gaber_task_one/utils/app_colors.dart';

class CustomArrowBackIOSIconButton extends StatelessWidget {
  const CustomArrowBackIOSIconButton({
    super.key, this.onPressed,
  });
final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
        color: AppColors.white,
      ),
      onPressed: onPressed,
    );
  }
}

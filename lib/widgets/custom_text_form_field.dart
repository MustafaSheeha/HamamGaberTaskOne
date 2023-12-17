import 'package:flutter/material.dart';
import 'package:hamam_gaber_task_one/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    this.onChanged,
  });
  final Function(String)? onChanged;
  final String label;
  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHight * 0.08,
      width: screenWidth * 0.8,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        onChanged: onChanged,
        validator: (value) {
          if (value!.isEmpty) {
            return '* Field is required';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all( screenWidth * 0.07),
          label: Text(
            label,
            style: const TextStyle(
                color: AppColors.black, fontWeight: FontWeight.bold),
          ),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}

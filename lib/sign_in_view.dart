import 'package:flutter/material.dart';
import 'package:hamam_gaber_task_one/sign_up_view.dart';
import 'package:hamam_gaber_task_one/utils/app_colors.dart';
import 'package:hamam_gaber_task_one/utils/app_strings.dart';
import 'package:hamam_gaber_task_one/utils/navigation.dart';
import 'package:hamam_gaber_task_one/widgets/bright_cornflower_blue_container.dart';
import 'package:hamam_gaber_task_one/widgets/cornflower_blue_circle_avatar.dart';
import 'package:hamam_gaber_task_one/widgets/custom_arrow_back_ios_icon_button.dart';
import 'package:hamam_gaber_task_one/widgets/custom_sign_in_form.dart';
import 'package:hamam_gaber_task_one/widgets/custom_text_button.dart';
import 'package:hamam_gaber_task_one/widgets/main_hawkes_bue_container.dart';
import 'package:hamam_gaber_task_one/widgets/text_header.dart';
import 'package:hamam_gaber_task_one/widgets/tropical_blue_circle_avatar.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const MainHawkesBlueContainer(),
            Positioned(
                top: screenWidth * -0.2,
                right: screenWidth * -0.7,
                child: const TropicalBlueCircleAvatar()),
            Positioned(
                top: screenWidth * -1.45,
                left: screenWidth * -0.65,
                child: const CornflowerBlueCircleAvatar()),
            Positioned(
                top: screenWidth * -0.9,
                left: screenWidth * -0.5,
                child: const TropicalBlueCircleAvatar()),
            Positioned(
                top: screenHight * 0.05,
                left: screenWidth * 0.05,
                child: const CustomArrowBackIOSIconButton()),
            Positioned(
                top: screenHight * 0.15,
                left: screenWidth * 0.07,
                child: const TextHeader(
                  title: AppStrings.welcomeBack,
                )),
            Positioned(
                top: screenHight * 0.95,
                right: screenWidth * 0.045,
                child: BrightCornflowerBlueContainer(
                  width: screenWidth * 0.46,
                  color: AppColors.deepBlush,
                )),
            Positioned(
                top: screenHight * 0.95,
                left: screenWidth * 0.08,
                child: const BrightCornflowerBlueContainer()),
            Positioned(
              top: screenHight * 0.92,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: screenWidth * 0.05),
                  CustomTextButton(
                    buttonName: AppStrings.signUp,
                    onPressed: () {
                      navigatePush(context, const SignUpView());
                    },
                  ),
                  SizedBox(width: screenWidth * 0.15),
                  const CustomTextButton(buttonName: AppStrings.forgotPassword),
                ],
              ),
            ),
            Positioned(
              top: screenHight * 0.4,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.09),
                  width: screenWidth,
                  child: const CustomSignInForm()),
            ),
          ],
        ),
      ),
    );
  }
}

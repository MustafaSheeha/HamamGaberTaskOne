import 'package:flutter/material.dart';
import 'package:hamam_gaber_task_one/sign_in_view.dart';
import 'package:hamam_gaber_task_one/utils/app_strings.dart';
import 'package:hamam_gaber_task_one/utils/navigation.dart';
import 'package:hamam_gaber_task_one/widgets/bright_cornflower_blue_container.dart';
import 'package:hamam_gaber_task_one/widgets/cornflower_blue_circle_avatar.dart';
import 'package:hamam_gaber_task_one/widgets/custom_arrow_back_ios_icon_button.dart';
import 'package:hamam_gaber_task_one/widgets/custom_sign_up_form.dart';
import 'package:hamam_gaber_task_one/widgets/custom_text_button.dart';
import 'package:hamam_gaber_task_one/widgets/main_hawkes_bue_container.dart';
import 'package:hamam_gaber_task_one/widgets/text_header.dart';
import 'package:hamam_gaber_task_one/widgets/tropical_blue_circle_avatar.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
                top: screenWidth * -1.45,
                left: screenWidth * -1,
                child: const CornflowerBlueCircleAvatar()),
            Positioned(
                top: screenHight * 0.05,
                left: screenWidth * 0.05,
                child: const CustomArrowBackIOSIconButton()),
            Positioned(
                top: screenHight * 0.15,
                left: screenWidth * 0.07,
                child: const TextHeader(
                  title: AppStrings.createAccount,
                )),
            Positioned(
                bottom: screenWidth * -0.65,
                right: screenWidth * -0.6,
                child: const TropicalBlueCircleAvatar()),
            Positioned(
                top: screenHight * 0.95,
                right: screenWidth * 0.09,
                child: const BrightCornflowerBlueContainer()),
            Positioned(
              top: screenHight * 0.92,
              right: screenWidth * 0.07,
              child: CustomTextButton(
                buttonName: AppStrings.signIn,
                onPressed: () {
                  navigatePush(context, const SignInView());
                },
              ),
            ),
            Positioned(
              top: screenHight * 0.4,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.09),
                  width: screenWidth,
                  child: const CustomSignUpForm()),
            ),
          ],
        ),
      ),
    );
  }
}

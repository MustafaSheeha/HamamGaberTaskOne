import 'package:flutter/material.dart';
import 'package:hamam_gaber_task_one/utils/app_colors.dart';
import 'package:hamam_gaber_task_one/utils/app_strings.dart';
import 'package:hamam_gaber_task_one/widgets/custom_text_form_field.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
     String? name;
     String? email;
     String? password;
    GlobalKey<FormState> signInFormKey = GlobalKey();
    return Form(
      key: signInFormKey,
      child: Column(
        children: [
          SizedBox(height: screenHight * 0.1),
           CustomTextFormField(
            label: AppStrings.yourEmail,
            onChanged: (email) {
              email=email;
            },
          ),
          SizedBox(height: screenHight * 0.03),
           CustomTextFormField(
            label: AppStrings.password,
            onChanged: (password) {
              password=password;
            },
          ),
          SizedBox(height: screenHight * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.signIn,
                style: TextStyle(
                    fontSize: screenWidth * 0.09, fontWeight: FontWeight.bold),
              ),
              CircleAvatar(
                radius: screenWidth * 0.08,
                backgroundColor: AppColors.cornflowerBlue,
                child: IconButton(
                    onPressed: () {
                      if ((signInFormKey.currentState!.validate())) {
                        print('${AppStrings.yourEmail} : $email');
                        print('${AppStrings.password} : $password');
                      }
                    },
                    icon: const Icon(
                      Icons.east,
                      color: AppColors.white,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}

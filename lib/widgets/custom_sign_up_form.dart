import 'package:flutter/material.dart';
import 'package:hamam_gaber_task_one/utils/app_colors.dart';
import 'package:hamam_gaber_task_one/utils/app_strings.dart';
import 'package:hamam_gaber_task_one/widgets/custom_text_form_field.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
     String? name;
     String? email;
     String? password;
    GlobalKey<FormState> signUpFormKey = GlobalKey();
    return Form(
      key: signUpFormKey,
      child: Column(
        children: [
           CustomTextFormField(
            label: AppStrings.name,
            onChanged: (value) {
              name=value;
            },
          ),
          SizedBox(height: screenHight * 0.03),
           CustomTextFormField(
            label: AppStrings.yourEmail,
            onChanged: (value) {
              email=value;
            },
          ),
          SizedBox(height: screenHight * 0.03),
           CustomTextFormField(
            label: AppStrings.password,
            onChanged: (value) {
              password=value;
            },
          ),
          SizedBox(height: screenHight * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.signUp,
                style: TextStyle(
                    fontSize: screenWidth * 0.09, fontWeight: FontWeight.bold),
              ),
              CircleAvatar(
                radius: screenWidth * 0.08,
                backgroundColor: AppColors.cornflowerBlue,
                child: IconButton(
                    onPressed: () {
                      if ((signUpFormKey.currentState!.validate())) {
                        print('${AppStrings.name} : $name');
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

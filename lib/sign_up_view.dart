import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHight,
            width: screenWidth,
            decoration: const BoxDecoration(color: Color(0xffd7e4fe)),
          ),
          Positioned(
              top: screenWidth * -1.45,
              left: screenWidth * -1,
              child: CircleAvatar(
                radius: screenWidth * 1.1,
                backgroundColor: const Color(0xff4e8aff),
              )),
          Positioned(
              top: screenHight * 0.05,
              left: screenWidth * 0.05,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {},
              )),
          Positioned(
              top: screenHight * 0.15,
              left: screenWidth * 0.07,
              child: Text(
                'Create\nAccount',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.1,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
            top: screenHight * 0.4,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.09),
              width: screenWidth,
              child: Column(
                children: [
                  const CustomTextFormField(
                    label: 'Name',
                  ),
                  SizedBox(height: screenHight * 0.03),
                  const CustomTextFormField(
                    label: 'Your Email',
                  ),
                  SizedBox(height: screenHight * 0.03),
                  const CustomTextFormField(
                    label: 'Password',
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHight * 0.73,
            left: screenWidth * 0.07,
            child: Text(
              'Sign Up',
              style: TextStyle(
                  fontSize: screenWidth * 0.09, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              bottom: screenWidth * -0.65,
              right: screenWidth * -0.6,
              child: CircleAvatar(
                radius: screenWidth * 0.58,
                backgroundColor: const Color(0xffb1caff),
              )),
          Positioned(
              top: screenHight * 0.73,
              right: screenWidth * 0.1,
              child: CircleAvatar(
                radius: screenWidth * 0.08,
                backgroundColor: const Color(0xff4e8aff),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.east,
                      color: Colors.white,
                    )),
              )),
          Positioned(
              top: screenHight * 0.95,
              right: screenWidth * 0.09,
              child: Container(
                height: screenHight * 0.019,
                width: screenWidth * 0.2,
                color: const Color(0xff5da2f0),
              )),
          Positioned(
            top: screenHight * 0.92,
            right: screenWidth * 0.07,
            child: TextButton(
                onPressed: () {},
                child: Text('Sign In',
                    style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ))),
          )
        ],
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
  });

  final String label;
  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.07, vertical: screenHight * 0.025),
          label: Text(
            label,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}

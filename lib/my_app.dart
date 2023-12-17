import 'package:flutter/material.dart';
import 'package:hamam_gaber_task_one/sign_up_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const SignUpView(),
    );
  }
}

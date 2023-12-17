import 'package:flutter/material.dart';

void navigatePush(BuildContext context, Widget widget) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ));
}

void navigatePop(BuildContext context) {
  Navigator.pop(context);
}

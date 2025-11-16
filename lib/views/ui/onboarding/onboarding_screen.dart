import 'package:flutter/material.dart';
import 'package:jobhub_mobile/views/common/exports.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ReusableText(
          text: "OnBoardingScreen",
          style: appstyle(30, kDark, FontWeight.bold),
        ),
      ),
    );
  }
}

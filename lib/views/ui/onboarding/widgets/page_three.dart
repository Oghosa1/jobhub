import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhub_mobile/constants/app_constants.dart';
import 'package:jobhub_mobile/views/common/app_style.dart';
import 'package:jobhub_mobile/views/common/custom_outline_btn.dart';
import 'package:jobhub_mobile/views/common/height_spacer.dart';
import 'package:jobhub_mobile/views/common/reusable_text.dart';
import 'package:jobhub_mobile/views/common/width_spacer.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: kDarkPurple,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // const HeightSpacer(size: 30),
            Image.asset('assets/images/page3.png'),
            const HeightSpacer(size: 20),
            const HeightSpacer(size: 20),
            ReusableText(
              text: 'Welcome to JobHub',
              style: appFontStyle(30, kLight, FontWeight.w600),
            ),
            const HeightSpacer(size: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                "We help you find your dream job to your dream company",
                style: appFontStyle(14, kLight, FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ),
            const HeightSpacer(size: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomOutlineBtn(
                  width: width * 0.4,
                  height: height * 0.06,
                  text: "Login",
                  onTap: () {},
                  color: kLight,
                ),
                const WidthSpacer(size: 10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: width * 0.4,
                    height: height * 0.06,
                    color: kLight,
                    child: Center(
                      child: ReusableText(
                        text: "Sign Up",
                        style: appFontStyle(16, kLightBlue, FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const HeightSpacer(size: 30),
            ReusableText(
              text: "Continue as a guest",
              style: appFontStyle(16, kLight, FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhub_mobile/constants/app_constants.dart';
import 'package:jobhub_mobile/views/common/app_style.dart';
import 'package:jobhub_mobile/views/common/height_spacer.dart';
import 'package:jobhub_mobile/views/common/reusable_text.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: kDarkBlue,
      child: Column(
        children: [
          const HeightSpacer(size: 70),
          Padding(padding: EdgeInsets.all(8.h)),
          Image.asset('assets/images/page2.png'),
          const HeightSpacer(size: 40),
          Column(
            children: [
              ReusableText(
                text: 'Stable Yourself \n With Your Ability',
                style: appFontStyle(30, kLight, FontWeight.w600),
              ),
              const HeightSpacer(size: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Use your ability to find your dream job, and get the best job for you. This is the best way to stable yourself.',
                  textAlign: TextAlign.center,
                  style: appFontStyle(16, kLight, FontWeight.normal),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

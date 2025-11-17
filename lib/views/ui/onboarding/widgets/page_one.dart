import 'package:flutter/material.dart';
import 'package:jobhub_mobile/constants/app_constants.dart';
import 'package:jobhub_mobile/views/common/exports.dart';
import 'package:jobhub_mobile/views/common/height_spacer.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: kDarkPurple,
      child: Column(
        children: [
          const HeightSpacer(size: 70),
          Image.asset('assets/images/page1.png'),
          const HeightSpacer(size: 40),
          Column(
            children: [
              ReusableText(
                text: 'Find Your Dream Job',
                style: appstyle(30, kLight, FontWeight.w600),
              ),
              const HeightSpacer(size: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Find your dream job with our easy-to-use job search platform. Browse thousands of job listings and apply with just a few clicks.',
                  style: appstyle(16, kLight, FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

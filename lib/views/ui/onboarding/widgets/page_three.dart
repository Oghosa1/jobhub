import 'package:flutter/material.dart';
import 'package:jobhub_mobile/constants/app_constants.dart';
import 'package:jobhub_mobile/views/common/height_spacer.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: kDarkPurple,
      child: Column(
        children: [
          const HeightSpacer(size: 70),
          Image.asset('assets/images/page3.png'),
        ],
      ),
    );
  }
}

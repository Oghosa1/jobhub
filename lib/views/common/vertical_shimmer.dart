import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhub_mobile/views/common/exports.dart';
import 'package:jobhub_mobile/constants/app_constants.dart';

class VerticalShimmer extends StatelessWidget {
  const VerticalShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [
        ShimmerEffect(
          curve: Curves.easeInBack,
          duration: Duration(seconds: 7),
          colors: [kLightGrey, kLightBlue, kLightGrey],
        ),
      ],
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        height: height * 0.15,
        width: width,
        color: kLightGrey,
      ),
    );
  }
}

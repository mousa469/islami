import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupervisedSplashLogo extends StatelessWidget {
  const SupervisedSplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 1750),
      child: Container(
        margin: EdgeInsets.only(bottom: 10.h),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            "assets/images/Supervised.png",
          ),
        ),
      ),
    );
  }
}

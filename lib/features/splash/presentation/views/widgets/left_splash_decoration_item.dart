import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeftSplashDecorationItem extends StatelessWidget {
  const LeftSplashDecorationItem({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(bottom: size.height * 0.20.h),
      child: Align(
        alignment: Alignment.centerLeft,
        child: FadeInLeft(
          duration: const Duration(milliseconds: 1750),
          child: Image.asset(
            "assets/images/left_shape.png",
          ),
        ),
      ),
    );
  }
}

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RightSplashDecorationItem extends StatelessWidget {
  const RightSplashDecorationItem({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: size.height * 0.20.h),
      child: Align(
        alignment: Alignment.centerRight,
        child: FadeInRight(
          duration: const Duration(milliseconds: 1750),
          child: Image.asset(
            "assets/images/right_shape.png",
          ),
        ),
      ),
    );
  }
}

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RightSplashItem extends StatelessWidget {
  const RightSplashItem({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topRight,
      child: FadeInDown(
        duration: const Duration(milliseconds: 1750),
        child: Image.asset(
          "assets/images/Glow.png",
          height: size.height * 0.25.h,
        ),
      ),
    );
  }
}

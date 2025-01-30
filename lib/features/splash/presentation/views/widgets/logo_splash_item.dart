import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoSplashItem extends StatelessWidget {
  const LogoSplashItem({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: ZoomIn(
        duration: const Duration(milliseconds: 1750),
        child: Image.asset(
          "assets/images/logo.png",
          height: size.height * 0.25.h,
        ),
      ),
    );
  }
}

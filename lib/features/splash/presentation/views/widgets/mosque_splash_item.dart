import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MosqueSplashItem extends StatelessWidget {
  const MosqueSplashItem({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 50.h),
      child: Align(
        alignment: Alignment.topCenter,
        child: Image.asset(
          "assets/images/Mosque.png",
          height: size.height * 0.25.h,
        ),
      ),
    );
  }
}

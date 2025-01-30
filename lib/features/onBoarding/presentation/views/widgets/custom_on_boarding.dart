import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/theme/app_colors.dart';
import 'package:myapp/core/theme/app_styles.dart';
import 'package:myapp/features/onBoarding/presentation/view_models/on_boarding_model.dart';

class CustomOnBoarding extends StatelessWidget {
  const CustomOnBoarding(
      {super.key, required this.onBoardingModel,});

 final  OnBoardingModel onBoardingModel;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          onBoardingModel.image,
          
          height: size.height * 0.35.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.03.w),
          child: Text(
            textAlign: TextAlign.center,
            onBoardingModel.title,
            style: AppStyles.textStyle24.copyWith(color: AppColors.primaryColor),
          ),
        ),
        SizedBox(
          height: size.height * 0.06.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.01.w),
          child: Text(
            onBoardingModel.subtitle ?? "",
            style:
                AppStyles.textStyle20.copyWith(color: AppColors.primaryColor),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

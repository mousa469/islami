import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/assets/app_assets.dart';
import 'package:myapp/core/theme/app_colors.dart';
import 'package:myapp/core/theme/app_styles.dart';

class SebbhaView extends StatefulWidget {
  const SebbhaView({super.key});

  @override
  State<SebbhaView> createState() => _SebbhaViewState();
}

class _SebbhaViewState extends State<SebbhaView> {
  double angle = 0;
  int counter = 0;
  String tasbehha = "سبحان الله ";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.sebhhaBG),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AppAssets.islamiOverMosque),
          Expanded(
            child: Column(
              children: [
                Image.asset(
                  AppAssets.sebhhaHead,
                  width: 80.w,
                  height: 80.h,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          angle++;
                          counter++;
                          if (counter >= 0 && counter <= 33) {
                            tasbehha = "سبحان الله ";
                          } else if (counter >= 33 && counter <= 66) {
                            tasbehha = "الحمد لله ";
                          } else if (counter >= 66 && counter <= 99) {
                            tasbehha = "الله اكبر ";
                          } else {
                            counter = 0;
                            tasbehha = "سبحان الله ";
                          }
                        });
                      },
                      child: Transform.rotate(
                        angle: angle,
                        child: Image.asset(
                          AppAssets.sebhhaBody,
                          height: 400.h,
                          width: 400.w,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          tasbehha,
                          style: AppStyles.textStyle24
                              .copyWith(color: AppColors.whiteColor),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "$counter",
                          style: AppStyles.textStyle24
                              .copyWith(color: AppColors.whiteColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/assets/app_assets.dart';
import 'package:myapp/core/theme/app_colors.dart';
import 'package:myapp/core/theme/app_styles.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.w),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const  BorderSide(color: AppColors.primaryColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const  BorderSide(color: AppColors.primaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const  BorderSide(color: AppColors.primaryColor),
                    ),
                    hintText: "Sura Name",
                    hintStyle: AppStyles.textStyle16.copyWith(color: AppColors.whiteColor),
                    prefixIcon: const  ImageIcon(AssetImage(AppAssets.quranVector ),color: AppColors.primaryColor, size: 5,),
                  ) ,

                ),
              );
  }
}
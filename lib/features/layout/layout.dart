import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/assets/app_assets.dart';
import 'package:myapp/core/theme/app_colors.dart';
import 'package:myapp/features/layout/hadith/presentation/views/hadith_view.dart';
import 'package:myapp/features/layout/quran/presentation/views/quran_view.dart';
import 'package:myapp/features/layout/radio/presentation/views/radio_view.dart';
import 'package:myapp/features/layout/sebbha/presentation/views/sebbha_view.dart';
import 'package:myapp/features/layout/time/presentation/views/time_view.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});
  static const String id = "/layout";

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int currentIndex = 0;

  List<Widget> views = [
    const QuranView(),
    HadithView(),
    const SebbhaView(),
    const RadioView(),
    const TimeView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        unselectedItemColor: AppColors.secondaryColor,
        selectedItemColor: AppColors.whiteColor,
        selectedLabelStyle: const TextStyle(color: AppColors.whiteColor),
        backgroundColor: AppColors.primaryColor,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: 50.w,
              height: 40.h,
              decoration: BoxDecoration(
                  color: currentIndex == 0
                      ? AppColors.grayColor.withOpacity(0.7)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(16)),
              child: const ImageIcon(
                AssetImage(AppAssets.quranVector),
              ),
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 50.w,
              height: 40.h,
              decoration: BoxDecoration(
                  color: currentIndex == 1
                      ? AppColors.grayColor.withOpacity(0.7)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(16)),
              child: const ImageIcon(
                AssetImage(AppAssets.hadithVector),
              ),
            ),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 50.w,
              height: 40.h,
              decoration: BoxDecoration(
                  color: currentIndex == 2
                      ? AppColors.grayColor.withOpacity(0.7)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(16)),
              child: const ImageIcon(
                AssetImage(AppAssets.sebbhaVector),
              ),
            ),
            label: 'sebhha',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 50.w,
              height: 40.h,
              decoration: BoxDecoration(
                  color: currentIndex == 3
                      ? AppColors.grayColor.withOpacity(0.7)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(16)),
              child: const ImageIcon(
                AssetImage(AppAssets.radioVector),
              ),
            ),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 50.w,
              height: 40.h,
              decoration: BoxDecoration(
                  color: currentIndex == 4
                      ? AppColors.grayColor.withOpacity(0.7)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(16)),
              child: const ImageIcon(
                AssetImage(AppAssets.timeVector),
              ),
            ),
            label: 'Time',
          ),
        ],
      ),
      body: views[currentIndex],
    );
  }
}

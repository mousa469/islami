import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/assets/app_assets.dart';
import 'package:myapp/core/services/local_storage/local_storage_keys.dart';
import 'package:myapp/core/services/local_storage/local_storage_services.dart';
import 'package:myapp/core/theme/app_colors.dart';
import 'package:myapp/core/theme/app_styles.dart';
import 'package:myapp/features/layout/layout.dart';
import 'package:myapp/features/onBoarding/presentation/view_models/on_boarding_model.dart';
import 'package:myapp/features/onBoarding/presentation/views/widgets/custom_indicator.dart';
import 'package:myapp/features/onBoarding/presentation/views/widgets/custom_on_boarding.dart';

class OnBoardingHome extends StatefulWidget {
  const OnBoardingHome({super.key});
  static const id = "/onboarding";

  @override
  State<OnBoardingHome> createState() => _OnBoardingHomeState();
}

class _OnBoardingHomeState extends State<OnBoardingHome> {
  final PageController _controller = PageController();

  int index = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LocalStorageServices.setBool(LocalStorageKeys.isFirstTimeRun, false);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Image.asset(AppAssets.islamiOverMosque),
            ),
            Expanded(
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return CustomOnBoarding(
                    onBoardingModel: OnBoardingModel.boardingList[index],
                  );
                },
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                controller: _controller,
                itemCount: OnBoardingModel.boardingList.length,
              ),
            ),
            Row(
              children: [
                index == 0
                    ? SizedBox(
                        width: size.width * 0.14.w,
                      )
                    : InkWell(
                        onTap: () {
                          _controller.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: SizedBox(
                          width: size.width * 0.14.w,
                          child: Text(
                            "Back",
                            style: AppStyles.textStyle16
                                .copyWith(color: AppColors.primaryColor),
                          ),
                        ),
                      ),
                const Spacer(),
                CustomIndicator(active: index == 0),
                const SizedBox(
                  width: 5,
                ),
                CustomIndicator(active: index == 1),
                const SizedBox(
                  width: 5,
                ),
                CustomIndicator(active: index == 2),
                const SizedBox(
                  width: 5,
                ),
                CustomIndicator(active: index == 3),
                const SizedBox(
                  width: 5,
                ),
                CustomIndicator(active: index == 4),
                const SizedBox(
                  width: 5,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    _controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                    index == 4
                        ? Navigator.pushNamedAndRemoveUntil(
                            context,
                            Layout.id,
                            (route) => false,
                          )
                        : "";
                  },
                  child: index == 4
                      ? SizedBox(
                          width: size.width * 0.14.w,
                          child: Text(
                            "finish",
                            style: AppStyles.textStyle16
                                .copyWith(color: AppColors.primaryColor),
                          ),
                        )
                      : SizedBox(
                          width: size.width * 0.14.w,
                          child: Text(
                            "Next",
                            style: AppStyles.textStyle16
                                .copyWith(color: AppColors.primaryColor),
                          ),
                        ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

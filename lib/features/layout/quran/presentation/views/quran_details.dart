import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/assets/app_assets.dart';
import 'package:myapp/core/theme/app_colors.dart';
import 'package:myapp/core/theme/app_styles.dart';
import 'package:myapp/features/layout/quran/presentation/view_models/sora_list_item_model.dart';

class QuranDetails extends StatefulWidget {
  const QuranDetails({super.key});
  static const String id = "/quranDetails";

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List<String> verses = [];
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SoraListItemModel;
    if (verses.isEmpty) {
      loadData(args.soraNumber);
    }

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.soraDetailsBackground),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            args.soraNameEn,
            style:
                AppStyles.textStyle20.copyWith(color: AppColors.primaryColor),
          ),
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: AppColors.primaryColor),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              args.soraNameAr,
              textAlign: TextAlign.center,
              style:
                  AppStyles.textStyle24.copyWith(color: AppColors.primaryColor),
            ),
            SizedBox(
              height: 90.h,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: verses.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Text(
                      textAlign: TextAlign.center,
                      "${verses[index]} [${index + 1}]",
                      style: AppStyles.textStyle20
                          .copyWith(color: AppColors.primaryColor),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void loadData(int suraNumber) async {
    String content =
        await rootBundle.loadString("assets/suras/$suraNumber.txt");
    setState(() {
      verses = content.split("\n");
    });
  }
}

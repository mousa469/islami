import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/assets/app_assets.dart';
import 'package:myapp/core/services/local_storage/local_storage_keys.dart';
import 'package:myapp/core/services/local_storage/local_storage_services.dart';
import 'package:myapp/core/theme/app_colors.dart';
import 'package:myapp/core/theme/app_styles.dart';
import 'package:myapp/features/layout/quran/presentation/view_models/sora_card_model.dart';
import 'package:myapp/features/layout/quran/presentation/view_models/sora_list_item_model.dart';
import 'package:myapp/features/layout/quran/presentation/views/widgets/custom_upper_logo.dart';
import 'package:myapp/features/layout/quran/presentation/views/widgets/custom_search_bar.dart';
import 'package:myapp/features/layout/quran/presentation/views/widgets/most_recent_sora_list_view.dart';
import 'package:myapp/features/layout/quran/presentation/views/widgets/sora_sliver_list.dart';

class QuranView extends StatefulWidget {
  const QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
 static List<SoraCardModel> soraCardList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
  }

  @override
Widget build(BuildContext context) {
  return FutureBuilder(
    future: Future.delayed(Duration.zero, () => loadMostRecentDataFromLocalStorage()),
    builder: (context, snapshot) {
      return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.quranBackGround), fit: BoxFit.cover),
        ),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: CustomUpperLogo()),
            const SliverToBoxAdapter(child: CustomSearchBar()),
            SliverToBoxAdapter(child: SizedBox(height: 30.h)),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  "Most Recently",
                  style: AppStyles.textStyle16.copyWith(color: AppColors.whiteColor),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20.h)),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: MostRecentSoraListView(soraCardModelList: soraCardList),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20.h)),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  "Suras List",
                  style: AppStyles.textStyle16.copyWith(color: AppColors.whiteColor),
                ),
              ),
            ),
            const SoraSliverList()
          ],
        ),
      );
    },
  );
}

  void loadMostRecentDataFromLocalStorage() {
    soraCardList.clear(); 
    List<String>? soraIndexList =
        LocalStorageServices.getStringList(LocalStorageKeys.mostRecent);

        if (soraIndexList == null) return;

    for (int i = 0; i < soraIndexList.length; i++) {
      for (int j = 0; j < SoraListItemModel.soraList.length; j++) {
        if (soraIndexList[i] ==
            SoraListItemModel.soraList[j].soraNumber.toString()) {
          soraCardList.add(SoraCardModel(
              soraNameEn: SoraListItemModel.soraList[j].soraNameEn,
              soraNameAr: SoraListItemModel.soraList[j].soraNameAr,
              numberOfVerses:
                  SoraListItemModel.soraList[j].soraNumberOfVerses));
        }
      }
    }
    setState(() {
      
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/assets/app_assets.dart';
import 'package:myapp/core/services/local_storage/local_storage_keys.dart';
import 'package:myapp/core/services/local_storage/local_storage_services.dart';
import 'package:myapp/core/theme/app_colors.dart';
import 'package:myapp/core/theme/app_styles.dart';
import 'package:myapp/features/layout/quran/presentation/view_models/sora_list_item_model.dart';
import 'package:myapp/features/layout/quran/presentation/views/quran_details.dart';

class SoraListItem extends StatefulWidget {
  const SoraListItem({super.key, required this.soraListItemModel});

  final SoraListItemModel soraListItemModel;

  @override
  State<SoraListItem> createState() => _SoraListItemState();
}

class _SoraListItemState extends State<SoraListItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w, right: 10.w, top: 10.h),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, QuranDetails.id,
              arguments: widget.soraListItemModel);

          addSoraIndexToLocalStorage(
              widget.soraListItemModel.soraNumber.toString());
        },
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 70.w,
                  height: 70.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        AppAssets.soraListVector,
                      ),
                    ),
                  ),
                  child: Text(
                    widget.soraListItemModel.soraNumber.toString(),
                    style: const TextStyle(
                        fontSize: 16,
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.soraListItemModel.soraNameEn,
                      style: AppStyles.textStyle20
                          .copyWith(color: AppColors.whiteColor),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      ///////////////////////////
                      "${widget.soraListItemModel.soraNumberOfVerses} verses",
                      style: AppStyles.textStyle14
                          .copyWith(color: AppColors.whiteColor),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  widget.soraListItemModel.soraNameAr,
                  style: AppStyles.textStyle20
                      .copyWith(color: AppColors.whiteColor),
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            const Divider(
              thickness: 1,
              endIndent: 40,
              indent: 40,
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }

  void addSoraIndexToLocalStorage(String index) {
    // Retrieve the existing list or create an empty list if it's null

    List<String> soraIndexList =
        LocalStorageServices.getStringList(LocalStorageKeys.mostRecent) ?? [];

    // Avoid duplicates
   
      soraIndexList.remove(index);
      soraIndexList.insert( 0, index);

  

    // Save the updated list
    LocalStorageServices.setStringList(
        LocalStorageKeys.mostRecent, soraIndexList);
  }
}

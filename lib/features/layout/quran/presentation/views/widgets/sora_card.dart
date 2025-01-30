import 'package:flutter/material.dart';
import 'package:myapp/core/assets/app_assets.dart';
import 'package:myapp/core/theme/app_colors.dart';
import 'package:myapp/core/theme/app_styles.dart';
import 'package:myapp/features/layout/quran/presentation/view_models/sora_card_model.dart';

class SoraCard extends StatelessWidget {
  const SoraCard({super.key, required this.soraCardModel});

  final SoraCardModel soraCardModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: AspectRatio(
        aspectRatio: 1.9,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      soraCardModel.soraNameEn ,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.textStyle24
                          .copyWith(color: AppColors.secondaryColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      soraCardModel.soraNameAr,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.textStyle24
                          .copyWith(color: AppColors.secondaryColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${soraCardModel.numberOfVerses} Verses",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.textStyle14
                          .copyWith(color: AppColors.secondaryColor),
                    ),
                  ],
                ),
              ),
              Expanded(child: Image.asset(AppAssets.quranSoraCard)),
            ],
          ),
        ),
      ),
    );
  }
}

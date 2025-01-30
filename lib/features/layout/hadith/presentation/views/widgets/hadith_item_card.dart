import 'package:flutter/material.dart';
import 'package:myapp/core/assets/app_assets.dart';
import 'package:myapp/core/theme/app_colors.dart';
import 'package:myapp/core/theme/app_styles.dart';
import 'package:myapp/features/layout/hadith/presentation/view_models/hadeth_model.dart';

class HadithItemCard extends StatelessWidget {
  const HadithItemCard({
    super.key,
    required this.hadethModel,
  });
  final HadethModel hadethModel;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          image: DecorationImage(
              image: AssetImage(AppAssets.hadithCard), fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  textAlign: TextAlign.center,
                  hadethModel.hadethNumber,
                  style: AppStyles.textStyle20,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  hadethModel.hadethContent,
                  textAlign: TextAlign.center,
                  style: AppStyles.textStyle16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

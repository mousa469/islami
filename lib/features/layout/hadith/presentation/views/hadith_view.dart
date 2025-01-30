import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/core/assets/app_assets.dart';
import 'package:myapp/features/layout/hadith/presentation/view_models/hadeth_model.dart';
import 'package:myapp/features/layout/hadith/presentation/views/widgets/hadith_item_card.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  List<HadethModel> hadethList = [];
  @override
  Widget build(BuildContext context) {
    if (hadethList.isEmpty) {
      loadData();
    }
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAssets.hadithBackground), fit: BoxFit.cover),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Image.asset(
          AppAssets.islamiOverMosque,
          width: 100,
          height: 150,
        ),
        Expanded(
          child: CarouselSlider(
              items: hadethList.map((e) {
                return HadithItemCard(hadethModel: e);
              }).toList(),
              options: CarouselOptions(
                height: 450,
                aspectRatio: 16 / 9,
                viewportFraction: 0.7,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              )),
        )
      ]),
    );
  }

  void loadData() async {
    for (var i = 0; i <= 49; i++) {
      String hadethWithTitle =
          await rootBundle.loadString("assets/Hadeeth/h${i + 1}.txt");

      List<String> singleHadeth = hadethWithTitle.split("\n");
      HadethModel hadethModel = HadethModel(
          hadethContent: singleHadeth[1], hadethNumber: singleHadeth[0]);
      hadethList.add(hadethModel);
      setState(() {});
    }
  }
}

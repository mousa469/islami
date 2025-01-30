import 'package:flutter/material.dart';
import 'package:myapp/features/layout/quran/presentation/view_models/sora_card_model.dart';
import 'package:myapp/features/layout/quran/presentation/views/widgets/sora_card.dart';

class MostRecentSoraListView extends StatelessWidget {
  const MostRecentSoraListView({super.key, required this.soraCardModelList});

  final List<SoraCardModel> soraCardModelList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: soraCardModelList.length,
        itemBuilder: (context, index) {
          return SoraCard(
            soraCardModel: soraCardModelList[index],
          );
        },
      ),
    );
  }
}

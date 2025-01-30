import 'package:flutter/material.dart';
import 'package:myapp/features/layout/quran/presentation/view_models/sora_list_item_model.dart';
import 'package:myapp/features/layout/quran/presentation/views/widgets/sora_list_item.dart';

class SoraSliverList extends StatefulWidget {
  const SoraSliverList({
    super.key,
  });

  @override
  State<SoraSliverList> createState() => _SoraSliverListState();
}

class _SoraSliverListState extends State<SoraSliverList> {


  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: SoraListItemModel.soraList.length,
      itemBuilder: (context, index) {
        return SoraListItem(
          soraListItemModel: SoraListItemModel.soraList[index],
        );
      },
    );
  }
}

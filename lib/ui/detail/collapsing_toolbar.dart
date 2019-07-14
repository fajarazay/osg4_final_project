import 'package:flutter/material.dart';
import 'package:osg4_final_project/model/card_info.dart';

class CollapsingToolbar extends StatelessWidget {
  final CardInfo cardInfo;

  const CollapsingToolbar({Key key, this.cardInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverOverlapAbsorber(
        child: SliverSafeArea(
          top: false,
          sliver: SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                cardInfo.name,
                overflow: TextOverflow.ellipsis,
              ),
              background: Image.network(
                cardInfo.cardImages[0].imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
            context));
  }

}
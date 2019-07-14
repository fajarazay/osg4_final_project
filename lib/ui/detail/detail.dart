import 'package:flutter/material.dart';
import 'package:osg4_final_project/model/card_info.dart';
import 'content_detail.dart';
import 'collapsing_toolbar.dart';

class Detail extends StatelessWidget {
  final CardInfo cardInfo;

  const Detail({Key key, this.cardInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            CollapsingToolbar(cardInfo: cardInfo)
          ],
          body: ContentDetail(cardInfo: cardInfo,)),
    );
  }
}

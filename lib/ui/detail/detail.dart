import 'package:flutter/material.dart';
import 'package:osg4_final_project/model/card_info.dart';

class Detail extends StatelessWidget {
  final CardInfo cardInfo;

  const Detail({Key key, this.cardInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 100,
                    ),
                    child: Text(
                      "HHHHH",
                      textScaleFactor: .8,
                    ),
                  ),
                  background: Image.network(
                    cardInfo.cardImages[0].imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ];
          },
          body: Container(
            margin: EdgeInsets.only(top: 16),
            child: Center(
              child: Card(
                child: Column(
                  children: <Widget>[
                    Text(cardInfo.desc),
                    Text(cardInfo.type),
                    Text(cardInfo.archetype)
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

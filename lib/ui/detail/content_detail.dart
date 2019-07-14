import 'package:flutter/material.dart';
import 'package:osg4_final_project/model/card_info.dart';

class ContentDetail extends StatelessWidget {
  final CardInfo cardInfo;

  const ContentDetail({Key key, this.cardInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
        child: Container(
            margin:
            EdgeInsets.only(top: 16, bottom: 16, right: 8, left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 16, horizontal: 8),
                        child: Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 22, fontFamily: 'RobotoBold'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 8, right: 8, bottom: 16),
                        child: Text(
                          cardInfo.desc,
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'RobotoRegular'),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 16, horizontal: 8),
                        child: Text(
                          "Sets",
                          style: TextStyle(
                              fontSize: 22, fontFamily: 'RobotoBold'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 8, right: 8, bottom: 16),
                        child: Text(
                          'Name: ${cardInfo.cardSets[0].setName}',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'RobotoRegular'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 8, right: 8, bottom: 16),
                        child: Text(
                          'Code: ${cardInfo.cardSets[0].setCode}',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'RobotoRegular'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 8, right: 8, bottom: 16),
                        child: Text(
                          'Rarity: ${cardInfo.cardSets[0].setRarity}',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'RobotoRegular'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 8, right: 8, bottom: 16),
                        child: Text(
                          'Price: ${cardInfo.cardSets[0].setPrice}',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'RobotoRegular'),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 16, horizontal: 8),
                        child: Text(
                          "Prices",
                          style: TextStyle(
                              fontSize: 22, fontFamily: 'RobotoBold'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 8, right: 8, bottom: 16),
                        child: Text(
                          'Card Market: ${cardInfo.cardPrices.cardMarketPrice}',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'RobotoRegular'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 8, right: 8, bottom: 16),
                        child: Text(
                          'TCG Player: ${cardInfo.cardPrices.tcgPlayerPrice}',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'RobotoRegular'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 8, right: 8, bottom: 16),
                        child: Text(
                          'Ebay: ${cardInfo.cardPrices.ebayPrice}',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'RobotoRegular'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 8, right: 8, bottom: 16),
                        child: Text(
                          'Amazon: ${cardInfo.cardPrices.amazonPrice}',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'RobotoRegular'),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )));
  }

}
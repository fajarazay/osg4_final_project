import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:osg4_final_project/model/card_info.dart';
import 'package:osg4_final_project/network/service_network.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'list_card_info.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ServiceNetwork serviceNetwork = ServiceNetwork();
    // TODO: implement build
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Final Project OSG4-Eudeka"),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.exit_to_app),
                  onPressed: () => _onAlertButtonsPressed(context))
            ],
          ),
          body: FutureBuilder<List<CardInfo>>(
            future: serviceNetwork.loadData(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListViewCardInfo(listCardInfo: snapshot.data);
            },
          ),
        ),
        onWillPop: () => _onAlertButtonsPressed(context));
  }

  // Alert with multiple and custom buttons
  _onAlertButtonsPressed(context) {
    Alert(
      context: context,
      type: AlertType.warning,
      title: "PERINGATAN",
      desc: "Yakin nih Bro, Aplikasinya mau ditutup?",
      buttons: [
        DialogButton(
          child: Text(
            "GA JADI DEH",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.of(context).pop(),
          color: Color.fromRGBO(0, 179, 134, 1.0),
        ),
        DialogButton(
          child: Text(
            "IYA",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () =>
              SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(116, 116, 191, 1.0),
            Color.fromRGBO(52, 138, 199, 1.0)
          ]),
        )
      ],
    ).show();
  }
}

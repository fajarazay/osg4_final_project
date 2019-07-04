import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:osg4_final_project/ui/home/home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = Duration(seconds: 10);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return Home();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              "FINAL PROJECT",
              style: TextStyle(
                color: Color(0xff2bb7ea),
                fontSize: 40.0,
                fontFamily: "RobotoBold",
              ),
            ),
            Text(
              "OSG 4",
              style: TextStyle(
                color: Color(0xff2bb7ea),
                fontSize: 20.0,
                fontFamily: "RobotoBold",
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                RotateAnimatedTextKit(
                    isRepeatingAnimation: true,
                    text: ["EUREKA", "MERDEKA"],
                    textStyle: TextStyle(
                      fontSize: 40.0,
                      fontFamily: "Horizon",
                      color: Color(0xfff79e1c),
                    ),
                    textAlign: TextAlign.center,
                    alignment: Alignment.center),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset("assets/img/logo-eudeka.png",
                  height: 100, width: 200),
            )
          ],
        ),
      ),
    );
  }
}

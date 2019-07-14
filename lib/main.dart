import 'package:flutter/material.dart';
import 'package:osg4_final_project/ui/splash/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
  }
}


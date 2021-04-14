import 'package:cloud_app/homeview.dart';
import 'package:cloud_app/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News Cloud',
        home: SplashScreen());
  }
}

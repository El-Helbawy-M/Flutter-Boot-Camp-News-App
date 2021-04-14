import 'dart:async';
import 'package:cloud_app/homeview.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Homeview()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: 100,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .40,
                ),
                Container(
                  height: 90,
                  width: 90,
                ),
                Expanded(child: SizedBox()),
                Text(
                  'from',
                  style: TextStyle(fontSize: 19, color: Colors.grey),
                ),
                Text(
                  'News Cloud',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

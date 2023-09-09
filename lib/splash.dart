import 'dart:async';

import 'package:first_application/Login.dart';
import 'package:first_application/siteConstant.dart';
import 'package:flutter/material.dart';

class splashdemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashState(),
    );
  }
}

class splashState extends StatefulWidget {
  @override
  splashApp createState() => splashApp();
}

class splashApp extends State<splashState> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    starttime();
  }

  Future<Timer> starttime() async {
    return new Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => LoginApp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Container(
        child: Center(
          child: Image.asset(
            SiteConstant.image_path + 'flutter.jpeg',
            width: 100.0,
            height: 100.0,
          ),
        ),
      ),
    );
  }
}

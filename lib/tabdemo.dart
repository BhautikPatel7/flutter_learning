import 'package:flutter/material.dart';

class tabdemo extends StatefulWidget {
  @override
  tabApp createState() => tabApp();
  
}

class tabApp extends State<tabdemo> {
 late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: vsync)
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
        title: Text('tab Layout'),
        bottom: gettab(),
      )),
    );
  }

  gettab() {
    return TabBar(tabs: [
      Tab(
        text: "Chat",
      ),
      Tab(
        text: "Status",
      ),
      Tab(
        text: "Call",
      ),
      
    ]
    controller: ,
    );
  }
}

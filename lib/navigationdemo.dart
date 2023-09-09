import 'package:first_application/siteConstant.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class navigationdemo extends StatefulWidget {
  @override
  navigationdemoState createState() => navigationdemoState();
}

class navigationdemoState extends State<navigationdemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Navigation OF Aplication'),
          titleTextStyle: TextStyle(),
        ),
        drawer: Drawer(
          child: new ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Bhautik'),
                accountEmail: Text('thummarbhautik99@gmail.com'),
                currentAccountPicture: Icon(Icons.supervised_user_circle),
              ),
              ListTile(
                leading: Icon(Icons.abc_outlined),
                title: Text(SiteConstant.nav_home),
                onTap: () {
                  showmassage(SiteConstant.nav_home);
                },
              ),
              ListTile(
                leading: Icon(Icons.stars_rounded),
                title: Text(SiteConstant.nav_stared),
                onTap: () {
                  showmassage(SiteConstant.nav_stared);
                },
              ),
              ListTile(
                leading: Icon(Icons.snooze_sharp),
                title: Text(SiteConstant.nav_snoozed),
                onTap: () {
                  showmassage(SiteConstant.nav_snoozed);
                },
              ),
              ListTile(
                leading: Icon(Icons.important_devices_rounded),
                title: Text(SiteConstant.nav_important),
                onTap: () {
                  showmassage(SiteConstant.nav_important);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  showmassage(var selected) {
    Fluttertoast.showToast(msg: selected, toastLength: Toast.LENGTH_LONG);
  }
}

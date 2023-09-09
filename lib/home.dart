import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeApp extends StatefulWidget {
  String sEmail, sPasscode;
  HomeApp(this.sEmail, this.sPasscode, {super.key});
  @override
  HomeAppState createState() => HomeAppState();
}

class HomeAppState extends State<HomeApp> {
  int iradiogroup = 4;
  bool androidchek = false;
  bool pythonchek = false;
  bool flutterchek = false;
  bool Swiftchek = false;
  List<String> technologyarry = [];
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 138, 172, 136),
          title: const Text(
            "Welcome Back",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          color: const Color.fromARGB(255, 202, 190, 155),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                        width: 250.0,
                        height: 30.0,
                        color: const Color.fromARGB(255, 86, 53, 121),
                        child: const Center(child: Text('Email Id'))),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(widget.sEmail),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                        width: 250.0,
                        height: 30.0,
                        color: const Color.fromARGB(255, 86, 53, 121),
                        child: const Center(child: Text('passcode'))),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(widget.sPasscode),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 150.0,
                    child: Row(
                      children: [
                        Radio(
                            value: 0,
                            groupValue: iradiogroup,
                            onChanged: (value) {
                              setState(() {
                                SetGender(value!, "male");
                              });
                            }),
                        const Text('Male'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 150.0,
                    child: Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: iradiogroup,
                            onChanged: (value) {
                              setState(() {
                                SetGender(value!, "Female");
                              });
                            }),
                        const Text('FeMale'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 150.0,
                    child: Row(
                      children: [
                        Radio(
                            value: 2,
                            groupValue: iradiogroup,
                            onChanged: (value) {
                              setState(() {
                                SetGender(value!, "TransGender");
                              });
                            }),
                        const Text('TransGender'),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: androidchek,
                      onChanged: (value) {
                        setState(() {
                          androidchek = value!;
                          techMethod(value, "Android");
                        });
                      }),
                  const Text('Android')
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: pythonchek,
                      onChanged: (value) {
                        setState(() {
                          pythonchek = value!;
                          techMethod(value, "Python");
                        });
                      }),
                  const Text('Python')
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: flutterchek,
                      onChanged: (value) {
                        setState(() {
                          flutterchek = value!;
                          techMethod(value, "Flutter");
                        });
                      }),
                  const Text('flutter')
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: Swiftchek,
                      onChanged: (value) {
                        setState(() {
                          Swiftchek = value!;
                          techMethod(value, "Swift");
                        });
                      }),
                  const Text('Swift')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void SetGender(int value, Selectedgender) {
    iradiogroup = value;
    Fluttertoast.showToast(msg: Selectedgender, toastLength: Toast.LENGTH_LONG);
  }

  techMethod(value, msg) {
    if (value) {
      //print(msg);
      technologyarry.add(msg);
    } else {
      technologyarry.removeWhere((element) => element == msg);
    }
    print(technologyarry);
  }
}

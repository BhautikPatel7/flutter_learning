import 'package:first_application/siteConstant.dart';
import 'package:flutter/material.dart';

class CustomList extends StatefulWidget {
  @override
  CustomListMainApp createState() => CustomListMainApp();
}

class CustomListMainApp extends State<CustomList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          titleTextStyle: TextStyle(color: Color.fromARGB(255, 253, 1, 1)),
          backgroundColor: Color.fromARGB(255, 188, 151, 112),
          title: Text(
            'I have Maked an Custom List',
          ),
        ),
        body: Container(
          child: CustomListDesign(),
        ),
      ),
    );
  }
}

class CustomListDesign extends StatelessWidget {
  List<String> imagearray = [
    "python.jpeg",
    "java.jpeg",
    "c.png",
    "android.png",
    "flutter.jpeg",
    "mongodb.jpeg"
  ];
  List<String> subtitlearray = [
    "python description",
    "java description",
    "cProgaming description",
    "Android description",
    "flutter description",
    "Mongodb description"
  ];
  List<String> titlearray = [
    "python",
    "java",
    "cProgaming",
    "Android",
    "flutter",
    "Mongodb"
  ];
  List<String> pricearray = [
    "1000",
    "3000",
    "650",
    "5000",
    "10000",
    "9000"
  ];  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //
    return ListView.builder(
      itemCount: imagearray.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            elevation: 5.0,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/image/${imagearray[index]}",
                    width: 100.0,
                    height: 100.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      children: [
                        Text(
                          titlearray[index],
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(subtitlearray[index],
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 15.0,
                              ),
                        ),
                        Text(
                          SiteConstant.price_symbol + pricearray[index],
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

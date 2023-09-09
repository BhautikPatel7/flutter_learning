import 'package:flutter/material.dart';

class Listdemo extends StatefulWidget {
  const Listdemo({super.key});

  @override
  ListMainApp createState() => ListMainApp();
}

class ListMainApp extends State<Listdemo> {
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
    "python description",
    "java description",
    "cProgaming description",
    "Android description",
    "flutter description",
    "Mongodb description"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List Demo Activity'),
        ),
        body: ListView.builder(
            itemCount: titlearray.length,
            itemBuilder: (BuildContext context, int position) {
              return ListTile(
                title: Text(titlearray[position]),
                subtitle: Text(subtitlearray[position]),
                leading: SizedBox(width: 100.0 ,child: Image.asset("assets/image/${imagearray[position]}")),
                trailing: const Icon(Icons.accessible_forward_outlined),
              );
            }),
      ),
    );
  }
}

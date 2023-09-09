import 'package:first_application/home.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginstatefulApp(),
    );
  }
}

class LoginstatefulApp extends StatefulWidget {
  const LoginstatefulApp({super.key});

  @override
  LoginAppState createState() => LoginAppState();
}

class LoginAppState extends State<LoginstatefulApp> {
  GlobalKey<FormState> formkey = GlobalKey();
  late String semail, spasscode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 118, 106, 149),
        title: const Text(
          "Login Page",
          style: TextStyle(color: Color.fromARGB(255, 177, 155, 90)),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_circle_left_outlined),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  "assets/image/login.png",
                  width: 150,
                  height: 150,
                ),
              ),
              Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            labelText: "Enter Email Id",
                            suffixIcon: const Icon(Icons.attach_email),
                          ),
                          validator: (emailinput) {
                            if (emailinput!.isEmpty || emailinput == "") {
                              return " Email Id Required";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (emailInput) {
                            semail = emailInput!;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            labelText: "Enter Passcode",
                            prefixIcon: const Icon(Icons.lock_person),
                          ),
                          validator: (passcodevalue) {
                            if (passcodevalue!.isEmpty || passcodevalue == "") {
                              return "Password Required";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (passcodeValue) {
                            spasscode = passcodeValue!;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13.0),
                        child: Container(
                          color: const Color.fromARGB(255, 77, 118, 131),
                          width: 150.0,
                          height: 40.0,
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  formkey.currentState!.save();
                                  print(
                                      " Login Sucessfull $semail $spasscode ${semail.length}");
                                  Fluttertoast.showToast(
                                      msg: "Login Sucessfully",
                                      toastLength: Toast.LENGTH_SHORT);
                                } else {
                                  print(" Login unSucessfull");
                                  Fluttertoast.showToast(
                                      msg: "Login unSucessfully",
                                      toastLength: Toast.LENGTH_SHORT);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              HomeApp(semail, spasscode)));
                                }
                              },
                              child: const Text(
                                "Enter",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 243, 188, 9),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'body.dart';
//import 'package:geocoding/geocoding.dart';
//import 'calc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Test App"),
          backgroundColor: Colors.deepOrange[200],
        ),
        body: Stack(
          children: const <Widget>[
            SizedBox(
              width: 400,
              child: MyCustomForm(),
            ),
            SizedBox(
              width: 350,
              child: DropDownView(),
            ),
          ],
        ),
        backgroundColor: Colors.lightBlue[50],
      ),
    );
  }
}

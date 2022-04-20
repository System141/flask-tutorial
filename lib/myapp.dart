import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

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
        body: Column(children: [
          Text('The Question'),
          TextFormField(
              decoration: const InputDecoration(
                hintText: 'Bütçe girin.',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen bir sayı girin.';
                }
                return null;
              }),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            
          ),
        ]),
        backgroundColor: Colors.lightBlue[50],
      ),
    );
  }
}

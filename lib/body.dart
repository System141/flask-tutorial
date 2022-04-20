import 'package:flutter/material.dart';

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Text(
            'Rota hesaplama:',
            style: TextStyle(fontSize: 24, color: Colors.red),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Bütçenizi girin (TL)',
            ),
          ),
        ),
      ],
    );
  }
}

class DropDownView extends StatefulWidget {
  const DropDownView({Key? key}) : super(key: key);

  @override
  State<DropDownView> createState() => _DropDownViewState();
}

class _DropDownViewState extends State<DropDownView> {
  String? selectedCity;
  List<String> citiesList = <String>[
    'Zonguldak',
    'Ankara',
    'Bursa',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: const Text(
        'Şehir seçin',
      ),
      isExpanded: true,
      value: selectedCity,
      items: [
        ...citiesList.map((String value) {
          return DropdownMenuItem<String>(
            child: Text(
              value,
            ),
            value: value,
          );
        }).toList(),
      ],
      onChanged: (_) {
        FocusScope.of(context).requestFocus(FocusNode());
        FocusScope.of(context).requestFocus(FocusNode());
        setState(() {
          selectedCity = _!;
        });
      },
    );
  }
}

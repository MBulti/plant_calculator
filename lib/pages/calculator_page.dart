import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String selectedValue = "1";

  List<DropdownMenuItem<String>> dropdownItems = [
    DropdownMenuItem(child: Text("Typ1"), value: "1"),
    DropdownMenuItem(child: Text("Typ2"), value: "2"),
    DropdownMenuItem(child: Text("Typ3"), value: "3"),
    DropdownMenuItem(child: Text("Typ4"), value: "4"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          // Pflanzentyp
          // Baumhöhe
          // Baumabstand
          // Reihenbreite
          // Reihenabstand
        
          DropdownButton(
            value: selectedValue,
            items: dropdownItems,
            hint: const Text("Pflanzentyp"),
            onChanged: (String? value) {
              setState(() {
                selectedValue = value!;
              });
            },
            isExpanded: true,
          ),
          const SizedBox(height: 10.0),
          TextField(
            keyboardType: TextInputType.numberWithOptions(decimal: true, signed: false),
            onChanged: (value) {
              setState(() {});
            },
            decoration: const InputDecoration(
              labelText: 'Baumhöhe',
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            keyboardType: TextInputType.numberWithOptions(decimal: true, signed: false),
            onChanged: (value) {
              setState(() {});
            },
            decoration: const InputDecoration(
              labelText: 'Baumabstand',
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            keyboardType: TextInputType.numberWithOptions(decimal: true, signed: false),
            onChanged: (value) {
              setState(() {});
            },
            decoration: const InputDecoration(
              labelText: 'Reihenbreite',
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            
            keyboardType: TextInputType.numberWithOptions(decimal: true, signed: false),
            onChanged: (value) {
              setState(() {});
            },
            decoration: const InputDecoration(
              labelText: 'Reihenabstand',
            ),
          ),
        ]),
      ),
    );
  }
}

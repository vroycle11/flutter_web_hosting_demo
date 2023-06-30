import 'package:flutter/material.dart';

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({super.key});

  @override
  State<CheckBoxExample> createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  @override
  Widget build(BuildContext context) {
         List<String> options = ['Option 1', 'Option 2', 'Option 3']; // List of options
List<bool> selectedOptions = List.filled(options.length, false); // List to track selected options
    return Scaffold(
      body:


Column(
  children: options.map((option) {
    print(option);
    int index = options.indexOf(option);

    return CheckboxListTile(
      title: Text(option),
      value: selectedOptions[index],
      onChanged: (bool? value) {
        setState(() {

          selectedOptions[index] = value ?? false;

          print(selectedOptions[index]);
        });
      },
    );
  }).toList(),
),);
  }
}
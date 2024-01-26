import 'package:flutter/material.dart';

class ValueDropdown extends StatefulWidget {
  @override
  _ValueDropdownState createState() => _ValueDropdownState();
}

class _ValueDropdownState extends State<ValueDropdown> {
  String? selectedTime = '¥ 1,000';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 124,
      height: 38,
      padding: EdgeInsets.symmetric(vertical: 9, horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(4),
      ),
      child: DropdownButton<String>(
        value: selectedTime,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 20,
        elevation: 16,
        style: TextStyle(color: Colors.black),
        onChanged: (String? newValue) {
          setState(() {
            selectedTime = newValue;
          });
        },
        items: [
          '¥ 1,000',
          '¥ 2,000',
          '¥ 3,000',
          '¥ 4,000',
          '¥ 5,000',
          '¥ 6,000',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

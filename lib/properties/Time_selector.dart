import 'package:flutter/material.dart';

class TimeSelectorDropdown extends StatefulWidget {
  @override
  _TimeSelectorDropdownState createState() => _TimeSelectorDropdownState();
}

class _TimeSelectorDropdownState extends State<TimeSelectorDropdown> {
  String? selectedTime = '12:00 PM';

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
          '12:00 AM',
          '1:00 AM',
          '2:00 AM',
          '3:00 AM',
          '4:00 AM',
          '5:00 AM',
          '6:00 AM',
          '7:00 AM',
          '8:00 AM',
          '9:00 AM',
          '10:00 AM',
          '11:00 AM',
          '12:00 PM',
          '1:00 PM',
          '2:00 PM',
          '3:00 PM',
          '4:00 PM',
          '5:00 PM',
          '6:00 PM',
          '7:00 PM',
          '8:00 PM',
          '9:00 PM',
          '10:00 PM',
          '11:00 PM',
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

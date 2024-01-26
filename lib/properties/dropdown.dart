import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {
  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String selectedValue = '料理カテゴリー選択';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue!;
        });
      },
      iconSize: 0,
      elevation: 16,
      underline: Container(
        height: 0,
      ),
      items: <String>['料理カテゴリー選択', 'Option 2', 'Option 3', 'Option 4']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Opacity(
            opacity: value == '料理カテゴリー選択' ? 0.5 : 1.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black.withOpacity(value == '料理カテゴリー選択' ? 0.5 : 1.0),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(0.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(value),
                  if (value != '料理カテゴリー選択')
                    Icon(
                      Icons.arrow_drop_down, // Custom icon
                      color: Colors.black,
                    ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

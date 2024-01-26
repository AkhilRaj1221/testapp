import 'package:flutter/material.dart';

class Location_pin extends StatefulWidget {
  @override
  State<Location_pin> createState() => _Location_pinState();
}

class _Location_pinState extends State<Location_pin> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              Icons.location_on_outlined,
              color: Colors.black,
              size: 20.0,
            ),
          ),
        ),
      ],
    );
  }
}

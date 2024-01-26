import 'package:flutter/material.dart';

class SquareToggle extends StatefulWidget {
  final ValueChanged<bool>? onChanged;
  final bool isSelected;

  SquareToggle({
    this.onChanged,
    this.isSelected = false,
  });

  @override
  _SquareToggleState createState() => _SquareToggleState();
}

class _SquareToggleState extends State<SquareToggle> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.onChanged?.call(!widget.isSelected);
        });
      },
      child: Container(
        width: 24.0,
        height: 24.0,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: widget.isSelected
            ? Icon(
          Icons.check,
          size: 16.0,
          color: Colors.blue,
        )
            : null,
      ),
    );
  }
}

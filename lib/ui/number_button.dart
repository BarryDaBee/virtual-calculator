import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  final _buttonTextStyle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.grey.shade700,
  );
  final VoidCallback onLongPress;
  final String number;
  final Color colour;
  final Function(String) onPressed;
  NumberButton({this.number, this.colour, this.onPressed, this.onLongPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: GestureDetector(
        onLongPress: onLongPress,
        onTap: () {
          onPressed(number);
        },
        child: Card(
          color: Colors.transparent,
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: colour,
            ),
            alignment: Alignment.center,
            child: Text(
              number,
              style: _buttonTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
